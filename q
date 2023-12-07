#!/bin/bash
TS_SOCKET=$(dirname -- "$0")/TS_SOCKET tsp -L "$USER" $@
