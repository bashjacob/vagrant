#!/bin/bash

# Copying controll-node ssh key to managed nodes
cat /shared/key.pub >> /home/vagrant/.ssh/authorized_keys
cat /shared/key.pub >> /root/.ssh/authorized_keys
