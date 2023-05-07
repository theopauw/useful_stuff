#!/bin/bash
while true; do
    read -p "Mount Sharename dir (y/n)? " -r yn
    case "${yn}" in
        [Yy]* ) sudo mount -t cifs //123.234.25.28/Sharename /mnt/sharename -o user=remoteuser,domain=remotedomain,vers=3.1.1,uid=localuser; break;;
        [Nn]* ) break;;
        * ) echo "";;
    esac
done
<<comment
while true; do
    read -p "Mount old Sharedir (y/n)? " -r yn
    case "${yn}" in
        [Yy]* ) sudo mount -t cifs //123.234.25.281/Sharedir /mnt/oldshare/ -o user=remoteuser,uid=localuser,vers=2.1; break;;
        [Nn]* ) break;;
        * ) echo "";;
    esac
done
comment
