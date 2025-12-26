#!/bin/bash

#combining above learnt tools:

grep "error" 2.log | awk '{print $1, $2}';
exit 0;
