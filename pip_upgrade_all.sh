#!/bin/sh
# Update all available Python packages by pip.

tempfile=`mktemp`
num=`pip list -o --format=freeze | tee $tempfile | wc -l`
echo "These ${num} packages will upgrade to the latest vision:"
cat $tempfile
sed 's/==.*//' -i $tempfile


echo -n "Do you want to upgrade all ${num} packages(y/N)"
read flag
case $flag in
    [yY])
        for package in `cat $tempfile`
        do
            pip install --upgrade $package
        done
    ;;
    *)
        exit 1
esac
