#!/bin/bash
set -e

#for master node 
sudo mkdir -p /var/tmp/WORK_DIRS2/store-m0
df /var/tmp/WORK_DIRS2/store-m0 | grep /var/tmp/WORK_DIRS2/store-m0 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-m0
sudo mkdir -p /var/tmp/WORK_DIRS2/store-m0
sudo mount -t tmpfs -o noatime,size=10g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-m0
mkdir -p /var/tmp/WORK_DIRS2/store-m0/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-m0/local

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w0
df /var/tmp/WORK_DIRS2/store-w0 | grep /var/tmp/WORK_DIRS2/store-w0 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w0
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w0
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w0
mkdir -p /var/tmp/WORK_DIRS2/store-w0/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w0/local
mkdir -p /var/tmp/WORK_DIRS2/store-w0/worker
exit

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w1
df /var/tmp/WORK_DIRS2/store-w1 | grep /var/tmp/WORK_DIRS2/store-w1 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w1
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w1
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w1
mkdir -p /var/tmp/WORK_DIRS2/store-w1/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w1/local
mkdir -p /var/tmp/WORK_DIRS2/store-w1/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w2
df /var/tmp/WORK_DIRS2/store-w2 | grep /var/tmp/WORK_DIRS2/store-w2 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w2
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w2
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w2
mkdir -p /var/tmp/WORK_DIRS2/store-w2/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w2/local
mkdir -p /var/tmp/WORK_DIRS2/store-w2/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w3
df /var/tmp/WORK_DIRS2/store-w3 | grep /var/tmp/WORK_DIRS2/store-w3 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w3
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w3
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w3
mkdir -p /var/tmp/WORK_DIRS2/store-w3/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w3/local
mkdir -p /var/tmp/WORK_DIRS2/store-w3/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w4
df /var/tmp/WORK_DIRS2/store-w4 | grep /var/tmp/WORK_DIRS2/store-w4 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w4
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w4
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w4
mkdir -p /var/tmp/WORK_DIRS2/store-w4/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w4/local
mkdir -p /var/tmp/WORK_DIRS2/store-w4/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w5
df /var/tmp/WORK_DIRS2/store-w5 | grep /var/tmp/WORK_DIRS2/store-w5 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w5
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w5
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w5
mkdir -p /var/tmp/WORK_DIRS2/store-w5/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w5/local
mkdir -p /var/tmp/WORK_DIRS2/store-w5/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w6
df /var/tmp/WORK_DIRS2/store-w6 | grep /var/tmp/WORK_DIRS2/store-w6 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w6
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w6
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w6
mkdir -p /var/tmp/WORK_DIRS2/store-w6/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w6/local
mkdir -p /var/tmp/WORK_DIRS2/store-w6/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w7
df /var/tmp/WORK_DIRS2/store-w7 | grep /var/tmp/WORK_DIRS2/store-w7 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w7
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w7
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w7
mkdir -p /var/tmp/WORK_DIRS2/store-w7/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w7/local
mkdir -p /var/tmp/WORK_DIRS2/store-w7/worker

exit

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w8
df /var/tmp/WORK_DIRS2/store-w8 | grep /var/tmp/WORK_DIRS2/store-w8 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w8
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w8
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w8
mkdir -p /var/tmp/WORK_DIRS2/store-w8/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w8/local
mkdir -p /var/tmp/WORK_DIRS2/store-w8/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w9
df /var/tmp/WORK_DIRS2/store-w9 | grep /var/tmp/WORK_DIRS2/store-w9 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w9
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w9
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w9
mkdir -p /var/tmp/WORK_DIRS2/store-w9/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w9/local
mkdir -p /var/tmp/WORK_DIRS2/store-w9/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w10
df /var/tmp/WORK_DIRS2/store-w10 | grep /var/tmp/WORK_DIRS2/store-w10 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w10
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w10
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w10
mkdir -p /var/tmp/WORK_DIRS2/store-w10/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w10/local
mkdir -p /var/tmp/WORK_DIRS2/store-w10/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w11
df /var/tmp/WORK_DIRS2/store-w11 | grep /var/tmp/WORK_DIRS2/store-w11 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w11
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w11
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w11
mkdir -p /var/tmp/WORK_DIRS2/store-w11/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w11/local
mkdir -p /var/tmp/WORK_DIRS2/store-w11/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w12
df /var/tmp/WORK_DIRS2/store-w12 | grep /var/tmp/WORK_DIRS2/store-w12 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w12
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w12
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w12
mkdir -p /var/tmp/WORK_DIRS2/store-w12/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w12/local
mkdir -p /var/tmp/WORK_DIRS2/store-w12/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w13
df /var/tmp/WORK_DIRS2/store-w13 | grep /var/tmp/WORK_DIRS2/store-w13 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w13
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w13
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w13
mkdir -p /var/tmp/WORK_DIRS2/store-w13/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w13/local
mkdir -p /var/tmp/WORK_DIRS2/store-w13/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w14
df /var/tmp/WORK_DIRS2/store-w14 | grep /var/tmp/WORK_DIRS2/store-w14 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w14
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w14
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w14
mkdir -p /var/tmp/WORK_DIRS2/store-w14/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w14/local
mkdir -p /var/tmp/WORK_DIRS2/store-w14/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w15
df /var/tmp/WORK_DIRS2/store-w15 | grep /var/tmp/WORK_DIRS2/store-w15 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w15
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w15
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w15
mkdir -p /var/tmp/WORK_DIRS2/store-w15/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w15/local
mkdir -p /var/tmp/WORK_DIRS2/store-w15/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w16
df /var/tmp/WORK_DIRS2/store-w16 | grep /var/tmp/WORK_DIRS2/store-w16 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w16
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w16
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w16
mkdir -p /var/tmp/WORK_DIRS2/store-w16/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w16/local
mkdir -p /var/tmp/WORK_DIRS2/store-w16/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w17
df /var/tmp/WORK_DIRS2/store-w17 | grep /var/tmp/WORK_DIRS2/store-w17 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w17
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w17
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w17
mkdir -p /var/tmp/WORK_DIRS2/store-w17/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w17/local
mkdir -p /var/tmp/WORK_DIRS2/store-w17/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w18
df /var/tmp/WORK_DIRS2/store-w18 | grep /var/tmp/WORK_DIRS2/store-w18 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w18
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w18
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w18
mkdir -p /var/tmp/WORK_DIRS2/store-w18/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w18/local
mkdir -p /var/tmp/WORK_DIRS2/store-w18/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w19
df /var/tmp/WORK_DIRS2/store-w19 | grep /var/tmp/WORK_DIRS2/store-w19 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w19
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w19
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w19
mkdir -p /var/tmp/WORK_DIRS2/store-w19/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w19/local
mkdir -p /var/tmp/WORK_DIRS2/store-w19/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w20
df /var/tmp/WORK_DIRS2/store-w20 | grep /var/tmp/WORK_DIRS2/store-w20 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w20
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w20
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w20
mkdir -p /var/tmp/WORK_DIRS2/store-w20/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w20/local
mkdir -p /var/tmp/WORK_DIRS2/store-w20/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w21
df /var/tmp/WORK_DIRS2/store-w21 | grep /var/tmp/WORK_DIRS2/store-w21 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w21
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w21
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w21
mkdir -p /var/tmp/WORK_DIRS2/store-w21/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w21/local
mkdir -p /var/tmp/WORK_DIRS2/store-w21/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w22
df /var/tmp/WORK_DIRS2/store-w22 | grep /var/tmp/WORK_DIRS2/store-w22 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w22
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w22
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w22
mkdir -p /var/tmp/WORK_DIRS2/store-w22/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w22/local
mkdir -p /var/tmp/WORK_DIRS2/store-w22/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w23
df /var/tmp/WORK_DIRS2/store-w23 | grep /var/tmp/WORK_DIRS2/store-w23 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w23
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w23
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w23
mkdir -p /var/tmp/WORK_DIRS2/store-w23/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w23/local
mkdir -p /var/tmp/WORK_DIRS2/store-w23/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w24
df /var/tmp/WORK_DIRS2/store-w24 | grep /var/tmp/WORK_DIRS2/store-w24 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w24
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w24
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w24
mkdir -p /var/tmp/WORK_DIRS2/store-w24/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w24/local
mkdir -p /var/tmp/WORK_DIRS2/store-w24/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w25
df /var/tmp/WORK_DIRS2/store-w25 | grep /var/tmp/WORK_DIRS2/store-w25 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w25
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w25
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w25
mkdir -p /var/tmp/WORK_DIRS2/store-w25/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w25/local
mkdir -p /var/tmp/WORK_DIRS2/store-w25/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w26
df /var/tmp/WORK_DIRS2/store-w26 | grep /var/tmp/WORK_DIRS2/store-w26 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w26
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w26
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w26
mkdir -p /var/tmp/WORK_DIRS2/store-w26/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w26/local
mkdir -p /var/tmp/WORK_DIRS2/store-w26/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w27
df /var/tmp/WORK_DIRS2/store-w27 | grep /var/tmp/WORK_DIRS2/store-w27 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w27
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w27
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w27
mkdir -p /var/tmp/WORK_DIRS2/store-w27/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w27/local
mkdir -p /var/tmp/WORK_DIRS2/store-w27/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w28
df /var/tmp/WORK_DIRS2/store-w28 | grep /var/tmp/WORK_DIRS2/store-w28 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w28
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w28
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w28
mkdir -p /var/tmp/WORK_DIRS2/store-w28/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w28/local
mkdir -p /var/tmp/WORK_DIRS2/store-w28/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w29
df /var/tmp/WORK_DIRS2/store-w29 | grep /var/tmp/WORK_DIRS2/store-w29 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w29
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w29
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w29
mkdir -p /var/tmp/WORK_DIRS2/store-w29/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w29/local
mkdir -p /var/tmp/WORK_DIRS2/store-w29/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w30
df /var/tmp/WORK_DIRS2/store-w30 | grep /var/tmp/WORK_DIRS2/store-w30 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w30
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w30
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w30
mkdir -p /var/tmp/WORK_DIRS2/store-w30/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w30/local
mkdir -p /var/tmp/WORK_DIRS2/store-w30/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w31
df /var/tmp/WORK_DIRS2/store-w31 | grep /var/tmp/WORK_DIRS2/store-w31 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w31
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w31
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w31
mkdir -p /var/tmp/WORK_DIRS2/store-w31/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w31/local
mkdir -p /var/tmp/WORK_DIRS2/store-w31/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w32
df /var/tmp/WORK_DIRS2/store-w32 | grep /var/tmp/WORK_DIRS2/store-w32 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w32
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w32
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w32
mkdir -p /var/tmp/WORK_DIRS2/store-w32/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w32/local
mkdir -p /var/tmp/WORK_DIRS2/store-w32/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w33
df /var/tmp/WORK_DIRS2/store-w33 | grep /var/tmp/WORK_DIRS2/store-w33 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w33
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w33
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w33
mkdir -p /var/tmp/WORK_DIRS2/store-w33/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w33/local
mkdir -p /var/tmp/WORK_DIRS2/store-w33/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w34
df /var/tmp/WORK_DIRS2/store-w34 | grep /var/tmp/WORK_DIRS2/store-w34 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w34
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w34
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w34
mkdir -p /var/tmp/WORK_DIRS2/store-w34/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w34/local
mkdir -p /var/tmp/WORK_DIRS2/store-w34/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w35
df /var/tmp/WORK_DIRS2/store-w35 | grep /var/tmp/WORK_DIRS2/store-w35 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w35
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w35
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w35
mkdir -p /var/tmp/WORK_DIRS2/store-w35/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w35/local
mkdir -p /var/tmp/WORK_DIRS2/store-w35/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w36
df /var/tmp/WORK_DIRS2/store-w36 | grep /var/tmp/WORK_DIRS2/store-w36 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w36
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w36
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w36
mkdir -p /var/tmp/WORK_DIRS2/store-w36/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w36/local
mkdir -p /var/tmp/WORK_DIRS2/store-w36/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w37
df /var/tmp/WORK_DIRS2/store-w37 | grep /var/tmp/WORK_DIRS2/store-w37 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w37
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w37
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w37
mkdir -p /var/tmp/WORK_DIRS2/store-w37/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w37/local
mkdir -p /var/tmp/WORK_DIRS2/store-w37/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w38
df /var/tmp/WORK_DIRS2/store-w38 | grep /var/tmp/WORK_DIRS2/store-w38 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w38
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w38
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w38
mkdir -p /var/tmp/WORK_DIRS2/store-w38/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w38/local
mkdir -p /var/tmp/WORK_DIRS2/store-w38/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w39
df /var/tmp/WORK_DIRS2/store-w39 | grep /var/tmp/WORK_DIRS2/store-w39 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w39
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w39
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w39
mkdir -p /var/tmp/WORK_DIRS2/store-w39/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w39/local
mkdir -p /var/tmp/WORK_DIRS2/store-w39/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w40
df /var/tmp/WORK_DIRS2/store-w40 | grep /var/tmp/WORK_DIRS2/store-w40 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w40
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w40
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w40
mkdir -p /var/tmp/WORK_DIRS2/store-w40/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w40/local
mkdir -p /var/tmp/WORK_DIRS2/store-w40/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w41
df /var/tmp/WORK_DIRS2/store-w41 | grep /var/tmp/WORK_DIRS2/store-w41 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w41
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w41
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w41
mkdir -p /var/tmp/WORK_DIRS2/store-w41/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w41/local
mkdir -p /var/tmp/WORK_DIRS2/store-w41/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w42
df /var/tmp/WORK_DIRS2/store-w42 | grep /var/tmp/WORK_DIRS2/store-w42 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w42
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w42
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w42
mkdir -p /var/tmp/WORK_DIRS2/store-w42/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w42/local
mkdir -p /var/tmp/WORK_DIRS2/store-w42/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w43
df /var/tmp/WORK_DIRS2/store-w43 | grep /var/tmp/WORK_DIRS2/store-w43 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w43
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w43
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w43
mkdir -p /var/tmp/WORK_DIRS2/store-w43/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w43/local
mkdir -p /var/tmp/WORK_DIRS2/store-w43/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w44
df /var/tmp/WORK_DIRS2/store-w44 | grep /var/tmp/WORK_DIRS2/store-w44 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w44
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w44
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w44
mkdir -p /var/tmp/WORK_DIRS2/store-w44/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w44/local
mkdir -p /var/tmp/WORK_DIRS2/store-w44/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w45
df /var/tmp/WORK_DIRS2/store-w45 | grep /var/tmp/WORK_DIRS2/store-w45 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w45
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w45
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w45
mkdir -p /var/tmp/WORK_DIRS2/store-w45/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w45/local
mkdir -p /var/tmp/WORK_DIRS2/store-w45/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w46
df /var/tmp/WORK_DIRS2/store-w46 | grep /var/tmp/WORK_DIRS2/store-w46 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w46
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w46
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w46
mkdir -p /var/tmp/WORK_DIRS2/store-w46/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w46/local
mkdir -p /var/tmp/WORK_DIRS2/store-w46/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w47
df /var/tmp/WORK_DIRS2/store-w47 | grep /var/tmp/WORK_DIRS2/store-w47 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w47
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w47
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w47
mkdir -p /var/tmp/WORK_DIRS2/store-w47/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w47/local
mkdir -p /var/tmp/WORK_DIRS2/store-w47/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w48
df /var/tmp/WORK_DIRS2/store-w48 | grep /var/tmp/WORK_DIRS2/store-w48 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w48
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w48
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w48
mkdir -p /var/tmp/WORK_DIRS2/store-w48/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w48/local
mkdir -p /var/tmp/WORK_DIRS2/store-w48/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w49
df /var/tmp/WORK_DIRS2/store-w49 | grep /var/tmp/WORK_DIRS2/store-w49 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w49
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w49
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w49
mkdir -p /var/tmp/WORK_DIRS2/store-w49/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w49/local
mkdir -p /var/tmp/WORK_DIRS2/store-w49/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w50
df /var/tmp/WORK_DIRS2/store-w50 | grep /var/tmp/WORK_DIRS2/store-w50 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w50
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w50
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w50
mkdir -p /var/tmp/WORK_DIRS2/store-w50/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w50/local
mkdir -p /var/tmp/WORK_DIRS2/store-w50/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w51
df /var/tmp/WORK_DIRS2/store-w51 | grep /var/tmp/WORK_DIRS2/store-w51 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w51
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w51
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w51
mkdir -p /var/tmp/WORK_DIRS2/store-w51/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w51/local
mkdir -p /var/tmp/WORK_DIRS2/store-w51/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w52
df /var/tmp/WORK_DIRS2/store-w52 | grep /var/tmp/WORK_DIRS2/store-w52 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w52
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w52
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w52
mkdir -p /var/tmp/WORK_DIRS2/store-w52/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w52/local
mkdir -p /var/tmp/WORK_DIRS2/store-w52/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w53
df /var/tmp/WORK_DIRS2/store-w53 | grep /var/tmp/WORK_DIRS2/store-w53 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w53
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w53
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w53
mkdir -p /var/tmp/WORK_DIRS2/store-w53/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w53/local
mkdir -p /var/tmp/WORK_DIRS2/store-w53/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w54
df /var/tmp/WORK_DIRS2/store-w54 | grep /var/tmp/WORK_DIRS2/store-w54 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w54
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w54
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w54
mkdir -p /var/tmp/WORK_DIRS2/store-w54/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w54/local
mkdir -p /var/tmp/WORK_DIRS2/store-w54/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w55
df /var/tmp/WORK_DIRS2/store-w55 | grep /var/tmp/WORK_DIRS2/store-w55 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w55
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w55
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w55
mkdir -p /var/tmp/WORK_DIRS2/store-w55/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w55/local
mkdir -p /var/tmp/WORK_DIRS2/store-w55/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w56
df /var/tmp/WORK_DIRS2/store-w56 | grep /var/tmp/WORK_DIRS2/store-w56 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w56
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w56
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w56
mkdir -p /var/tmp/WORK_DIRS2/store-w56/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w56/local
mkdir -p /var/tmp/WORK_DIRS2/store-w56/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w57
df /var/tmp/WORK_DIRS2/store-w57 | grep /var/tmp/WORK_DIRS2/store-w57 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w57
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w57
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w57
mkdir -p /var/tmp/WORK_DIRS2/store-w57/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w57/local
mkdir -p /var/tmp/WORK_DIRS2/store-w57/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w58
df /var/tmp/WORK_DIRS2/store-w58 | grep /var/tmp/WORK_DIRS2/store-w58 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w58
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w58
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w58
mkdir -p /var/tmp/WORK_DIRS2/store-w58/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w58/local
mkdir -p /var/tmp/WORK_DIRS2/store-w58/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w59
df /var/tmp/WORK_DIRS2/store-w59 | grep /var/tmp/WORK_DIRS2/store-w59 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w59
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w59
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w59
mkdir -p /var/tmp/WORK_DIRS2/store-w59/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w59/local
mkdir -p /var/tmp/WORK_DIRS2/store-w59/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w60
df /var/tmp/WORK_DIRS2/store-w60 | grep /var/tmp/WORK_DIRS2/store-w60 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w60
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w60
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w60
mkdir -p /var/tmp/WORK_DIRS2/store-w60/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w60/local
mkdir -p /var/tmp/WORK_DIRS2/store-w60/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w61
df /var/tmp/WORK_DIRS2/store-w61 | grep /var/tmp/WORK_DIRS2/store-w61 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w61
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w61
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w61
mkdir -p /var/tmp/WORK_DIRS2/store-w61/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w61/local
mkdir -p /var/tmp/WORK_DIRS2/store-w61/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w62
df /var/tmp/WORK_DIRS2/store-w62 | grep /var/tmp/WORK_DIRS2/store-w62 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w62
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w62
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w62
mkdir -p /var/tmp/WORK_DIRS2/store-w62/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w62/local
mkdir -p /var/tmp/WORK_DIRS2/store-w62/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w63
df /var/tmp/WORK_DIRS2/store-w63 | grep /var/tmp/WORK_DIRS2/store-w63 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w63
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w63
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w63
mkdir -p /var/tmp/WORK_DIRS2/store-w63/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w63/local
mkdir -p /var/tmp/WORK_DIRS2/store-w63/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w64
df /var/tmp/WORK_DIRS2/store-w64 | grep /var/tmp/WORK_DIRS2/store-w64 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w64
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w64
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w64
mkdir -p /var/tmp/WORK_DIRS2/store-w64/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w64/local
mkdir -p /var/tmp/WORK_DIRS2/store-w64/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w65
df /var/tmp/WORK_DIRS2/store-w65 | grep /var/tmp/WORK_DIRS2/store-w65 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w65
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w65
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w65
mkdir -p /var/tmp/WORK_DIRS2/store-w65/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w65/local
mkdir -p /var/tmp/WORK_DIRS2/store-w65/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w66
df /var/tmp/WORK_DIRS2/store-w66 | grep /var/tmp/WORK_DIRS2/store-w66 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w66
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w66
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w66
mkdir -p /var/tmp/WORK_DIRS2/store-w66/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w66/local
mkdir -p /var/tmp/WORK_DIRS2/store-w66/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w67
df /var/tmp/WORK_DIRS2/store-w67 | grep /var/tmp/WORK_DIRS2/store-w67 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w67
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w67
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w67
mkdir -p /var/tmp/WORK_DIRS2/store-w67/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w67/local
mkdir -p /var/tmp/WORK_DIRS2/store-w67/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w68
df /var/tmp/WORK_DIRS2/store-w68 | grep /var/tmp/WORK_DIRS2/store-w68 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w68
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w68
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w68
mkdir -p /var/tmp/WORK_DIRS2/store-w68/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w68/local
mkdir -p /var/tmp/WORK_DIRS2/store-w68/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w69
df /var/tmp/WORK_DIRS2/store-w69 | grep /var/tmp/WORK_DIRS2/store-w69 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w69
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w69
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w69
mkdir -p /var/tmp/WORK_DIRS2/store-w69/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w69/local
mkdir -p /var/tmp/WORK_DIRS2/store-w69/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w70
df /var/tmp/WORK_DIRS2/store-w70 | grep /var/tmp/WORK_DIRS2/store-w70 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w70
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w70
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w70
mkdir -p /var/tmp/WORK_DIRS2/store-w70/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w70/local
mkdir -p /var/tmp/WORK_DIRS2/store-w70/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w71
df /var/tmp/WORK_DIRS2/store-w71 | grep /var/tmp/WORK_DIRS2/store-w71 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w71
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w71
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w71
mkdir -p /var/tmp/WORK_DIRS2/store-w71/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w71/local
mkdir -p /var/tmp/WORK_DIRS2/store-w71/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w72
df /var/tmp/WORK_DIRS2/store-w72 | grep /var/tmp/WORK_DIRS2/store-w72 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w72
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w72
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w72
mkdir -p /var/tmp/WORK_DIRS2/store-w72/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w72/local
mkdir -p /var/tmp/WORK_DIRS2/store-w72/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w73
df /var/tmp/WORK_DIRS2/store-w73 | grep /var/tmp/WORK_DIRS2/store-w73 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w73
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w73
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w73
mkdir -p /var/tmp/WORK_DIRS2/store-w73/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w73/local
mkdir -p /var/tmp/WORK_DIRS2/store-w73/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w74
df /var/tmp/WORK_DIRS2/store-w74 | grep /var/tmp/WORK_DIRS2/store-w74 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w74
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w74
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w74
mkdir -p /var/tmp/WORK_DIRS2/store-w74/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w74/local
mkdir -p /var/tmp/WORK_DIRS2/store-w74/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w75
df /var/tmp/WORK_DIRS2/store-w75 | grep /var/tmp/WORK_DIRS2/store-w75 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w75
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w75
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w75
mkdir -p /var/tmp/WORK_DIRS2/store-w75/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w75/local
mkdir -p /var/tmp/WORK_DIRS2/store-w75/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w76
df /var/tmp/WORK_DIRS2/store-w76 | grep /var/tmp/WORK_DIRS2/store-w76 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w76
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w76
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w76
mkdir -p /var/tmp/WORK_DIRS2/store-w76/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w76/local
mkdir -p /var/tmp/WORK_DIRS2/store-w76/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w77
df /var/tmp/WORK_DIRS2/store-w77 | grep /var/tmp/WORK_DIRS2/store-w77 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w77
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w77
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w77
mkdir -p /var/tmp/WORK_DIRS2/store-w77/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w77/local
mkdir -p /var/tmp/WORK_DIRS2/store-w77/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w78
df /var/tmp/WORK_DIRS2/store-w78 | grep /var/tmp/WORK_DIRS2/store-w78 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w78
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w78
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w78
mkdir -p /var/tmp/WORK_DIRS2/store-w78/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w78/local
mkdir -p /var/tmp/WORK_DIRS2/store-w78/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w79
df /var/tmp/WORK_DIRS2/store-w79 | grep /var/tmp/WORK_DIRS2/store-w79 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w79
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w79
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w79
mkdir -p /var/tmp/WORK_DIRS2/store-w79/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w79/local
mkdir -p /var/tmp/WORK_DIRS2/store-w79/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w80
df /var/tmp/WORK_DIRS2/store-w80 | grep /var/tmp/WORK_DIRS2/store-w80 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w80
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w80
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w80
mkdir -p /var/tmp/WORK_DIRS2/store-w80/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w80/local
mkdir -p /var/tmp/WORK_DIRS2/store-w80/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w81
df /var/tmp/WORK_DIRS2/store-w81 | grep /var/tmp/WORK_DIRS2/store-w81 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w81
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w81
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w81
mkdir -p /var/tmp/WORK_DIRS2/store-w81/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w81/local
mkdir -p /var/tmp/WORK_DIRS2/store-w81/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w82
df /var/tmp/WORK_DIRS2/store-w82 | grep /var/tmp/WORK_DIRS2/store-w82 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w82
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w82
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w82
mkdir -p /var/tmp/WORK_DIRS2/store-w82/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w82/local
mkdir -p /var/tmp/WORK_DIRS2/store-w82/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w83
df /var/tmp/WORK_DIRS2/store-w83 | grep /var/tmp/WORK_DIRS2/store-w83 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w83
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w83
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w83
mkdir -p /var/tmp/WORK_DIRS2/store-w83/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w83/local
mkdir -p /var/tmp/WORK_DIRS2/store-w83/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w84
df /var/tmp/WORK_DIRS2/store-w84 | grep /var/tmp/WORK_DIRS2/store-w84 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w84
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w84
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w84
mkdir -p /var/tmp/WORK_DIRS2/store-w84/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w84/local
mkdir -p /var/tmp/WORK_DIRS2/store-w84/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w85
df /var/tmp/WORK_DIRS2/store-w85 | grep /var/tmp/WORK_DIRS2/store-w85 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w85
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w85
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w85
mkdir -p /var/tmp/WORK_DIRS2/store-w85/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w85/local
mkdir -p /var/tmp/WORK_DIRS2/store-w85/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w86
df /var/tmp/WORK_DIRS2/store-w86 | grep /var/tmp/WORK_DIRS2/store-w86 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w86
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w86
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w86
mkdir -p /var/tmp/WORK_DIRS2/store-w86/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w86/local
mkdir -p /var/tmp/WORK_DIRS2/store-w86/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w87
df /var/tmp/WORK_DIRS2/store-w87 | grep /var/tmp/WORK_DIRS2/store-w87 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w87
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w87
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w87
mkdir -p /var/tmp/WORK_DIRS2/store-w87/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w87/local
mkdir -p /var/tmp/WORK_DIRS2/store-w87/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w88
df /var/tmp/WORK_DIRS2/store-w88 | grep /var/tmp/WORK_DIRS2/store-w88 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w88
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w88
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w88
mkdir -p /var/tmp/WORK_DIRS2/store-w88/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w88/local
mkdir -p /var/tmp/WORK_DIRS2/store-w88/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w89
df /var/tmp/WORK_DIRS2/store-w89 | grep /var/tmp/WORK_DIRS2/store-w89 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w89
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w89
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w89
mkdir -p /var/tmp/WORK_DIRS2/store-w89/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w89/local
mkdir -p /var/tmp/WORK_DIRS2/store-w89/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w90
df /var/tmp/WORK_DIRS2/store-w90 | grep /var/tmp/WORK_DIRS2/store-w90 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w90
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w90
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w90
mkdir -p /var/tmp/WORK_DIRS2/store-w90/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w90/local
mkdir -p /var/tmp/WORK_DIRS2/store-w90/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w91
df /var/tmp/WORK_DIRS2/store-w91 | grep /var/tmp/WORK_DIRS2/store-w91 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w91
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w91
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w91
mkdir -p /var/tmp/WORK_DIRS2/store-w91/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w91/local
mkdir -p /var/tmp/WORK_DIRS2/store-w91/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w92
df /var/tmp/WORK_DIRS2/store-w92 | grep /var/tmp/WORK_DIRS2/store-w92 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w92
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w92
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w92
mkdir -p /var/tmp/WORK_DIRS2/store-w92/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w92/local
mkdir -p /var/tmp/WORK_DIRS2/store-w92/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w93
df /var/tmp/WORK_DIRS2/store-w93 | grep /var/tmp/WORK_DIRS2/store-w93 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w93
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w93
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w93
mkdir -p /var/tmp/WORK_DIRS2/store-w93/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w93/local
mkdir -p /var/tmp/WORK_DIRS2/store-w93/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w94
df /var/tmp/WORK_DIRS2/store-w94 | grep /var/tmp/WORK_DIRS2/store-w94 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w94
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w94
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w94
mkdir -p /var/tmp/WORK_DIRS2/store-w94/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w94/local
mkdir -p /var/tmp/WORK_DIRS2/store-w94/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w95
df /var/tmp/WORK_DIRS2/store-w95 | grep /var/tmp/WORK_DIRS2/store-w95 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w95
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w95
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w95
mkdir -p /var/tmp/WORK_DIRS2/store-w95/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w95/local
mkdir -p /var/tmp/WORK_DIRS2/store-w95/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w96
df /var/tmp/WORK_DIRS2/store-w96 | grep /var/tmp/WORK_DIRS2/store-w96 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w96
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w96
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w96
mkdir -p /var/tmp/WORK_DIRS2/store-w96/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w96/local
mkdir -p /var/tmp/WORK_DIRS2/store-w96/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w97
df /var/tmp/WORK_DIRS2/store-w97 | grep /var/tmp/WORK_DIRS2/store-w97 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w97
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w97
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w97
mkdir -p /var/tmp/WORK_DIRS2/store-w97/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w97/local
mkdir -p /var/tmp/WORK_DIRS2/store-w97/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w98
df /var/tmp/WORK_DIRS2/store-w98 | grep /var/tmp/WORK_DIRS2/store-w98 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w98
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w98
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w98
mkdir -p /var/tmp/WORK_DIRS2/store-w98/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w98/local
mkdir -p /var/tmp/WORK_DIRS2/store-w98/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w99
df /var/tmp/WORK_DIRS2/store-w99 | grep /var/tmp/WORK_DIRS2/store-w99 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w99
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w99
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w99
mkdir -p /var/tmp/WORK_DIRS2/store-w99/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w99/local
mkdir -p /var/tmp/WORK_DIRS2/store-w99/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w100
df /var/tmp/WORK_DIRS2/store-w100 | grep /var/tmp/WORK_DIRS2/store-w100 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w100
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w100
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w100
mkdir -p /var/tmp/WORK_DIRS2/store-w100/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w100/local
mkdir -p /var/tmp/WORK_DIRS2/store-w100/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w101
df /var/tmp/WORK_DIRS2/store-w101 | grep /var/tmp/WORK_DIRS2/store-w101 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w101
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w101
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w101
mkdir -p /var/tmp/WORK_DIRS2/store-w101/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w101/local
mkdir -p /var/tmp/WORK_DIRS2/store-w101/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w102
df /var/tmp/WORK_DIRS2/store-w102 | grep /var/tmp/WORK_DIRS2/store-w102 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w102
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w102
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w102
mkdir -p /var/tmp/WORK_DIRS2/store-w102/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w102/local
mkdir -p /var/tmp/WORK_DIRS2/store-w102/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w103
df /var/tmp/WORK_DIRS2/store-w103 | grep /var/tmp/WORK_DIRS2/store-w103 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w103
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w103
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w103
mkdir -p /var/tmp/WORK_DIRS2/store-w103/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w103/local
mkdir -p /var/tmp/WORK_DIRS2/store-w103/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w104
df /var/tmp/WORK_DIRS2/store-w104 | grep /var/tmp/WORK_DIRS2/store-w104 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w104
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w104
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w104
mkdir -p /var/tmp/WORK_DIRS2/store-w104/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w104/local
mkdir -p /var/tmp/WORK_DIRS2/store-w104/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w105
df /var/tmp/WORK_DIRS2/store-w105 | grep /var/tmp/WORK_DIRS2/store-w105 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w105
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w105
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w105
mkdir -p /var/tmp/WORK_DIRS2/store-w105/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w105/local
mkdir -p /var/tmp/WORK_DIRS2/store-w105/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w106
df /var/tmp/WORK_DIRS2/store-w106 | grep /var/tmp/WORK_DIRS2/store-w106 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w106
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w106
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w106
mkdir -p /var/tmp/WORK_DIRS2/store-w106/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w106/local
mkdir -p /var/tmp/WORK_DIRS2/store-w106/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w107
df /var/tmp/WORK_DIRS2/store-w107 | grep /var/tmp/WORK_DIRS2/store-w107 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w107
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w107
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w107
mkdir -p /var/tmp/WORK_DIRS2/store-w107/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w107/local
mkdir -p /var/tmp/WORK_DIRS2/store-w107/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w108
df /var/tmp/WORK_DIRS2/store-w108 | grep /var/tmp/WORK_DIRS2/store-w108 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w108
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w108
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w108
mkdir -p /var/tmp/WORK_DIRS2/store-w108/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w108/local
mkdir -p /var/tmp/WORK_DIRS2/store-w108/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w109
df /var/tmp/WORK_DIRS2/store-w109 | grep /var/tmp/WORK_DIRS2/store-w109 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w109
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w109
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w109
mkdir -p /var/tmp/WORK_DIRS2/store-w109/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w109/local
mkdir -p /var/tmp/WORK_DIRS2/store-w109/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w110
df /var/tmp/WORK_DIRS2/store-w110 | grep /var/tmp/WORK_DIRS2/store-w110 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w110
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w110
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w110
mkdir -p /var/tmp/WORK_DIRS2/store-w110/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w110/local
mkdir -p /var/tmp/WORK_DIRS2/store-w110/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w111
df /var/tmp/WORK_DIRS2/store-w111 | grep /var/tmp/WORK_DIRS2/store-w111 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w111
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w111
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w111
mkdir -p /var/tmp/WORK_DIRS2/store-w111/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w111/local
mkdir -p /var/tmp/WORK_DIRS2/store-w111/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w112
df /var/tmp/WORK_DIRS2/store-w112 | grep /var/tmp/WORK_DIRS2/store-w112 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w112
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w112
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w112
mkdir -p /var/tmp/WORK_DIRS2/store-w112/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w112/local
mkdir -p /var/tmp/WORK_DIRS2/store-w112/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w113
df /var/tmp/WORK_DIRS2/store-w113 | grep /var/tmp/WORK_DIRS2/store-w113 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w113
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w113
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w113
mkdir -p /var/tmp/WORK_DIRS2/store-w113/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w113/local
mkdir -p /var/tmp/WORK_DIRS2/store-w113/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w114
df /var/tmp/WORK_DIRS2/store-w114 | grep /var/tmp/WORK_DIRS2/store-w114 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w114
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w114
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w114
mkdir -p /var/tmp/WORK_DIRS2/store-w114/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w114/local
mkdir -p /var/tmp/WORK_DIRS2/store-w114/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w115
df /var/tmp/WORK_DIRS2/store-w115 | grep /var/tmp/WORK_DIRS2/store-w115 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w115
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w115
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w115
mkdir -p /var/tmp/WORK_DIRS2/store-w115/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w115/local
mkdir -p /var/tmp/WORK_DIRS2/store-w115/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w116
df /var/tmp/WORK_DIRS2/store-w116 | grep /var/tmp/WORK_DIRS2/store-w116 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w116
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w116
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w116
mkdir -p /var/tmp/WORK_DIRS2/store-w116/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w116/local
mkdir -p /var/tmp/WORK_DIRS2/store-w116/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w117
df /var/tmp/WORK_DIRS2/store-w117 | grep /var/tmp/WORK_DIRS2/store-w117 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w117
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w117
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w117
mkdir -p /var/tmp/WORK_DIRS2/store-w117/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w117/local
mkdir -p /var/tmp/WORK_DIRS2/store-w117/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w118
df /var/tmp/WORK_DIRS2/store-w118 | grep /var/tmp/WORK_DIRS2/store-w118 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w118
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w118
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w118
mkdir -p /var/tmp/WORK_DIRS2/store-w118/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w118/local
mkdir -p /var/tmp/WORK_DIRS2/store-w118/worker

sudo mkdir -p /var/tmp/WORK_DIRS2/store-w119
df /var/tmp/WORK_DIRS2/store-w119 | grep /var/tmp/WORK_DIRS2/store-w119 > /dev/null && sudo umount /var/tmp/WORK_DIRS2/store-w119
sudo mkdir -p /var/tmp/WORK_DIRS2/store-w119
sudo mount -t tmpfs -o noatime,size=100g,mpol=bind:0 tmpfs /var/tmp/WORK_DIRS2/store-w119
mkdir -p /var/tmp/WORK_DIRS2/store-w119/eventLog
mkdir -p /var/tmp/WORK_DIRS2/store-w119/local
mkdir -p /var/tmp/WORK_DIRS2/store-w119/worker

