mkdir ../bridge 2> /dev/null
rm ../bridge/* 2> /dev/null

##########

mergebase=$1
if [ -z "$mergebase" ]
then
  mergebase=`../such/mast.sh`
fi

branch=`git rev-parse --abbrev-ref HEAD`
echo "$mergebase..$branch" > ../bridge/info

echo '../bridge/info:'
cat ../bridge/info

##########

date=`git log --format=format:%ai -1 $mergebase`

if [ ! $? -eq 0 ]
then
  exit 1
fi

echo $date > ../bridge/date

echo
echo '../bridge/date:'
cat ../bridge/date

##########

echo
echo '../bridge/patches:'

# `tee` this directly, so we see it partially update when it's being slow.
git format-patch -k -o ../bridge/ $mergebase | tee ../bridge/patches
