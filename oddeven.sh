#Odd or Even checker
echo Odd or Even Checker
echo -n Enter a number: 
read num
if [ $((num%2)) -eq 0 ]; then
	echo Even
else
	echo Odd
fi
