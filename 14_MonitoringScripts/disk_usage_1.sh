#!/bin/bash

df -h;

#extracting 5th coln.
df -h | tail -1 | awk '{print $5}';

#removing percentage:

df -h | tail -1 | awk '{print $5}' | tr -d %;