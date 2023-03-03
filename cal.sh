#Calculator using if - By Salo
echo Simple Calculator
read -p 'Number1:' n1
read -p 'Number2:' n2
echo What operation would you like to perform?
echo 1:Addition
echo 2:Subtraction
echo 3:Multiplication
echo 4:Division
read -p 'Your choice:' ch
if [ $ch -eq 1 ]
then
	echo Result: $(($n1+$n2))
elif [ $ch -eq 2 ]
then
	echo Result: $(($n1-$n2))
elif [ $ch -eq 3 ]
then
	echo Result: $(($n1*$n2))
elif [ $ch -eq 4 ]
then
	if [ $n2 -eq 0 ]
	then
		echo Cannot divide by zero
	else
		echo -n Result: 
		echo "scale=4; $n1 / $n2" | bc
	fi
else
	echo Invalid choice			
fi
