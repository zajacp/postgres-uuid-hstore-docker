#!/bin/bash

gosu postgres psql --dbname template1 <<- EOSQL
   CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
   CREATE EXTENSION IF NOT EXISTS "hstore";
EOSQL
