#!/bin/bash

port=3000
server=thin

bundle exec rackup -s $server -p $port
