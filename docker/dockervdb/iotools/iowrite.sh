#!/bin/bash
# filename: io_write.sh

#NFS=$1  # The caller will provide the mount information.

# Example data
#SRC=/data/input
#SRC=/dev/zero

#DEST=/mount
#mkdir -p $DEST
# nolock is used here only to avoid rpcbind dependencies in container
#mount -o nolock $NFS $DEST

# Create working directory.
#WORKING=$DEST/io_test_`hostname`
#mkdir -p $WORKING
#cd $WORKING

# Write multiple copies of the input data to reach TARGET worth of bytes written.
#TARGET=$(( 5 * 1024 * 1024 * 1024 ))  # 5 GB
#FSIZE=`wc -c < $SRC`
#ITERS=$(( $TARGET / $FSIZE ))

#for i in `seq $ITERS`
#do
#	dd if=$SRC of=$WORKING/file$i bs=1M
#done

for i in `seq 1 10`
do
	dd if=/dev/zero of=/andy/andy7/file$i bs=512k count=18432 &
	dd if=/dev/zero of=/andy/andy14/file$i bs=512k count=18432 &
	dd if=/dev/zero of=/andy/andy20/file$i bs=512k count=18432 &
	dd if=/dev/zero of=/andy/andy21/file$i bs=512k count=18432 &
	dd if=/dev/zero of=/andy/andy22/file$i bs=512k count=18432 &
	dd if=/dev/zero of=/andy/andy23/file$i bs=512k count=18432 &
	dd if=/dev/zero of=/andy/andy24/file$i bs=512k count=18432 &
	dd if=/dev/zero of=/andy/andy25/file$i bs=512k count=18432 &
done
