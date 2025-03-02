#!/usr/bin/env bash

cp /etc/passwd /etc/passwd.bak &&
sed -i 's:/var/home:/home:' /etc/passwd


systemctl disable snap-passwd
