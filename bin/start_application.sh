#!/bin/bash

port=3000
server=puma

bundle exec rackup -s $server -p $port
