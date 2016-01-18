#! /bin/bash

env

unset QPID_PORT

exec qpidd -t --auth=no
