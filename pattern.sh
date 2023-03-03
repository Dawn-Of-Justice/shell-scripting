#Pattern generator - By Salo
echo Inverted Pattern Genarator
read -p 'Enter the floor number:' n
floor=$n
number=$(($((2*n))-1))
space=0
for((i=floor;i>0;i--))
do
	for((k=0;k<space;k++))
	do
		echo -n " "
	done
	for((j=number;j>0;j--))
	do
		echo -n '*'
	done
	number=$((number-2))
	space=$((space+1))
	echo " "
done
