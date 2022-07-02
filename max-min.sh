read -p "Enter the A value: " a
read -p "Enter the B value: " b
read -p "Enter the c value: " c
read -p "Enter the D value: " d
read -p "Enter the E value: " e

f=$(($a+$b+$c+$d+$e))
g=$(($a%$b+$c+$d*$e))
h=$(($c+$a/$b-$e+$d))
i=$(($a*$b+$c-$d/$e))
echo "a+b*c-e+f: $d"
echo "c+a/b-e+f: $e"
echo "a%b+c+d*f: $f"
echo "a*b+c-d/f: $g"
array=($f $g $h $i)
echo "Digit : ${array[@]}"
echo "---------------------"
max=${array[0]}
min=${array[0]}
for array in "${array[@]}"
do
if [[ $array -gt $max ]]
then
	max=$array
fi 

if [[ $array -lt $min ]]
then
        min=$array
fi

done
echo "maximum is :$max"
echo "Minimum is :$min"
