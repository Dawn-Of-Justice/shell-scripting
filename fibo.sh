#Fibonacci sequence- By Salo
echo Fibonacci Checker
read -p 'How many terms would you like to print:' n
a=0
b=1
echo Fibonacci Sequence:
for((i=0;i<n;i++))
do
	echo -n $a" "
	c=$((b+a))
	a=$b
	b=$c
done
echo 
