#!/bin/sh

psql -U dbuser <<EOSQL
create database osmhistory;
\c osmhistory
create extension hstore;
create extension postgis;
EOSQL

python3 scripts/changesetmd.py -d osmhistory -c -g -f changesets.osm.bz2 -p password -u dbuser
