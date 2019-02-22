#!/bin/bash
# filename: io_read.sh

#NFS=$1

#DEST=/mount
#mkdir -p $DEST
#mount -o nolock $NFS $DEST

## Working directory.
#WORKING=$DEST/io_test_`hostname`
#cd $WORKING


for i in /andy/andy7/file*
do
	dd if=$i of=/dev/null bs=512k &
done

for i in /andy/andy14/file*
do
	dd if=$i of=/dev/null bs=512k &
done

for i in /andy/andy20/file*
do
	dd if=$i of=/dev/null bs=512k &
done

for i in /andy/andy21/file*
do
	dd if=$i of=/dev/null bs=512k &
done

for i in /andy/andy22/file*
do
	dd if=$i of=/dev/null bs=512k &
done

for i in /andy/andy23/file*
do
	dd if=$i of=/dev/null bs=512k &
done

for i in /andy/andy24/file*
do
	dd if=$i of=/dev/null bs=512k &
done

for i in /andy/andy25/file*
do
	dd if=$i of=/dev/null bs=512k &
done


