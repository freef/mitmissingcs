#!/usr/bin/env bash

ls -ltrR | sort -k 6,6 -k 7,7 -k 8,8 | tail -n 1 > lastmodified.txt
