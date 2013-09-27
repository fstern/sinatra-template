#!/bin/bash

set -e
test -d public

bootstrap_url='https://github.com/twbs/bootstrap.git'
temp_dir='/tmp'

if test -d $temp_dir/bootstrap ; then
    clone_dir=$temp_dir/bootstrap-$(date +%s)
else
    clone_dir=$temp_dir/bootstrap
fi

git clone $bootstrap_url $clone_dir
test -d $clone_dir/dist
cp -vfrp $clone_dir/dist/* public
test -d $clone_dir && rm -rf $clone_dir
