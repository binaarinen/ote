#!/bin/sh

psql -U dbuser <<EOSQL
create database osmhistory;
\c osmhistory
create extension hstore;
create extension postgis;
EOSQL

python3 scripts/changesetmd.py -d osmhistory -c -g -f 995.osm -p password -u dbuser



#psql -U dbuser -d osmhistory <<EOSQL
#update osm_changeset_state set last_sequence = {SEQUENCE};
#EOSQL
