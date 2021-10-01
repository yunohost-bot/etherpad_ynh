#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

nodejs_version=14

# Dependencies for AbiWord
abiword_app_depencencies="abiword"

# Dependencies for LibreOffice
libreoffice_app_dependencies="unoconv libreoffice-writer"

#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

# get the first available redis database
#
# usage: ynh_redis_get_free_db
# | returns: the database number to use
ynh_redis_get_free_db() {
	local result max db
	result=$(redis-cli INFO keyspace)

	# get the num
	max=$(cat /etc/redis/redis.conf | grep ^databases | grep -Eow "[0-9]+")

	db=0
	# default Debian setting is 15 databases
	for i in $(seq 0 "$max")
	do
	 	if ! echo "$result" | grep -q "db$i"
	 	then
			db=$i
	 		break 1
 		fi
 		db=-1
	done

	test "$db" -eq -1 && ynh_die --message="No available Redis databases..."

	echo "$db"
}

# Flush Redis key
#
# usage: ynh_redis_remove_db database
# | arg: database - the database to erase
ynh_redis_remove_db() {
	local db=$1
	redis-cli -n "$db" flushall
}


dump_location=/var/lib/redis/dump.rdb
#destination=/tmp/dump-$(date +"%Y%m%d").rdb
# Restore a database
#
ynh_redis_restore_db() {
	cat $dump_location | redis-cli -x restore mykey $ynh_redis_get_free_db	
}


# Dump a database
#
ynh_redis_dump_db() {
	# Declare an array to define the options of this helper.
	local db=$1

	redis-cli SET mykey "$db"
	redis-cli --raw dump mykey | head -c-1 > $dump_location	
}

