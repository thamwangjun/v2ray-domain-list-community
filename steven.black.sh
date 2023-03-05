#!/usr/bin/env sh

cp hosts/steven.black.base data/steven.black.base
cp hosts/steven.black.fakenews data/steven.black.fakenews
cp hosts/steven.black.gambling data/steven.black.gambling
cp hosts/steven.black.porn data/steven.black.porn
cp hosts/steven.black.social data/steven.black.social

# clean all empty lines

sed -i "" '/^[[:space:]]*$/d' data/steven.black.base
sed -i "" '/^[[:space:]]*$/d' data/steven.black.fakenews
sed -i "" '/^[[:space:]]*$/d' data/steven.black.gambling
sed -i "" '/^[[:space:]]*$/d' data/steven.black.porn
sed -i "" '/^[[:space:]]*$/d' data/steven.black.social

# remove last line

truncate -s -1 data/steven.black.base
truncate -s -1 data/steven.black.fakenews
truncate -s -1 data/steven.black.gambling
truncate -s -1 data/steven.black.porn
truncate -s -1 data/steven.black.social

# add full:
sed -i "" 's/^/full:/' data/steven.black.base
sed -i "" 's/^/full:/' data/steven.black.fakenews
sed -i "" 's/^/full:/' data/steven.black.gambling
sed -i "" 's/^/full:/' data/steven.black.porn
sed -i "" 's/^/full:/' data/steven.black.social
