#!/bin/sh
docker create -i -t --volume `pwd`:/workspace -w /workspace --name ruby_dev ruby:2.7.2
