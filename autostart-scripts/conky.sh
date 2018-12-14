#!/usr/bin/env bash


if [ -z "$conky" ]; then
    conky -c ~/.conky/conky_carelli.conf
fi
