#!/bin/bash

echo $key >> key.json
yc config set service-account-key key.json
rm key.json

yc $args
