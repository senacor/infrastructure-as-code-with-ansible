#!/usr/bin/env bash

vagrant destroy -f
ssh-keygen -R [localhost]:2222
ssh-keygen -R [dockerhost]:2222
ssh-keygen -R [192.168.65.1]:2222
vagrant up
