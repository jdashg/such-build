#!/bin/bash

cp such/mozconfig/debug central/.mozconfig

echo 'Switched to desktop debug build.'
echo 'Currently on desktop debug build.' > .such-prep-status.txt
