#Calculator using switch - By Salo
echo Simple Calculator
loop=1
while [ $loop -eq 1 ]
do
	echo What operation would you like to perform?
	echo 1:Addition
	echo 2:Subtraction
	echo 3:Multiplication
	echo 4:Division
	echo 5:Exit
	read -p 'Your choice:' ch
	if [ $ch -ne 5 ]
	then
		read -p 'Number1:' n1
		read -p 'Number2:' n2
	fi
	case $ch in
		1) echo Result: $(($n1+$n2));;
		2) echo Result: $(($n1-$n2));;
		3) echo Result: $(($n1*$n2));;
		4) if [ $n2 -eq 0 ]
			then
				echo Cannot divide by zero
			else
				echo -n Result: 
				echo "scale=4; $n1 / $n2" | bc
			fi
		;;
		5) loop=0
	esac
done
