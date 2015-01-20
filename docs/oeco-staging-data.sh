#!/usr/bin/env bash

dir=$(dirname "$0")
heroku pg:psql --app oeco-staging < "$dir/oeco-staging-data.sql"
