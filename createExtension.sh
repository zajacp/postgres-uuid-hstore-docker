#!/bin/bash

gosu postgres postgres --single <<- EOSQL
   CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
   CREATE EXTENSION IF NOT EXISTS "hstore";
EOSQL
