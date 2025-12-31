#!/bin/bash

#memory monitoring

free -h;

free;

free | awk '/Mem/ {printf("%0.f"), $3/$2 *100}';