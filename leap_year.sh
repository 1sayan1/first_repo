#!bin/bash

echo "Enter the beginning year"
read y1
echo "Enter the end year"
read y2

for (( year=y1; year<=y2; year++ )); do
	if (( (year%4==0 && year%100!=0) || (year%400==0) )); then
		echo "$year is a leap year"
	else
		echo "$year is not a leap year"
	fi
done
