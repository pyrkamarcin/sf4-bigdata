#!/usr/bin/env bash

echo "---------------------------------------- STOP ----------------------------------------"
docker stop $(docker ps -a -q)
echo "--------------------------------------- REMOVE ---------------------------------------"
docker rm $(docker ps -a -q)
echo "--------------------------------------- CLEAN ----------------------------------------"
docker-sync-stack clean

echo "------------------------------------- START BUILD ------------------------------------"
docker-compose build
echo "------------------------------------- START SYNC -------------------------------------"
docker-sync-stack start