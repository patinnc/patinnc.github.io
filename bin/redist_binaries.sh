#!/bin/bash


SCR_DIR=`dirname $0`

ARCH=`lscpu| awk '/Architecture/{print $2}'`
if [ "$ARCH" == "x86_64" ]; then
  #echo "$0.$LINENO arch= $ARCH nothing to do"
  ASTR=""
fi
if [ "$ARCH" == "aarch64" ]; then
  ARCH="arm64"
  ASTR="_arm64"
  XSTR=".x"
fi
#if [ "$ARCH" != "arm64" ]; then
#  echo "$0.$LINENO arch= $ARCH. only can hanlde arm64 and amd64 (x86_64). bye"
#exit 1
#fi

# rm oppat/bin/spin.x oppat/bin/spin_arm64.x 60secs/extras/spin*.x DynoInstallFolder/extras/spin*.x
DYN_DIR=DynoInstallFolder
D60_DIR=60secs
ITP_DIR=itp
DIRS="$DYN_DIR/extras $D60_DIR/extras"
SDIR=$SCR_DIR
BIN=spin
for i in $DIRS; do 
  pushd $i
  echo cp $SDIR/${BIN}${ASTR}.x $BIN.x
  cp $SDIR/${BIN}${ASTR}.x $BIN.x
  popd
done
 
# rm 60secs/perf 60secs/perf_arm64.x itp/perf itp/perf_arm64.x 
DIRS="$ITP_DIR $D60_DIR"
BIN=perf
for i in $DIRS; do 
  pushd $i
  echo cp $SDIR/${BIN}${ASTR}${XSTR} $BIN
  cp $SDIR/${BIN}${ASTR}${XSTR} $BIN
  popd
done

#rm 60secs/bin/tsc_freq*.x itp/bin/tsc_freq*.x
DIRS="$ITP_DIR/bin $D60_DIR/bin"
BIN=tsc_freq
for i in $DIRS; do 
  pushd $i
  echo cp $SDIR/${BIN}${ASTR}.x $BIN.x
  cp $SDIR/${BIN}${ASTR}.x $BIN.x
  popd
done

#rm 60secs/bin/gawk itp/bin/gawk
#$D60_DIR/bin/tsc_freq${ASTR}.x
#./$ITP_DIR/bin/tsc_freq${ASTR}.x
DIRS="$ITP_DIR/bin $D60_DIR/bin"
BIN=gawk
for i in $DIRS; do 
  pushd $i
  echo cp $SDIR/${BIN}${ASTR}${XSTR} $BIN
  cp $SDIR/${BIN}${ASTR}${XSTR} $BIN
  popd
done


echo "$0.$LINENO finished"
exit 0


./oppat/bin/spin${ASTR}.x
./oppat/bin/clocks${ASTR}.x
./oppat/bin/wait${ASTR}.x
