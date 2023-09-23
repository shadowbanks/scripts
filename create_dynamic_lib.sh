#!/bin/bash
gcc -fPIC -Wall *.c -shared -o $1
chmod +x $1
