#Check leap year
echo Leap year Checker
read -p 'Enter a year:' year
if [ $((year%4)) -eq 0 -a $((year%100)) -ne 0 -o $((year%400)) -eq 0 ]
then 
	echo It is a leap Year
else
	echo Not a leap Year
fi
