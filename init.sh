#!/bin/sh


psql -U dbuser <<EOF
create database osmhistory;
\c osmhistory
create extension hstore;
create extension postgis;
EOF
