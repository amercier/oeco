#!/usr/bin/env bash

dir=$(dirname "$0")
rails dbconsole < "$dir/oeco-staging-data.sql"
