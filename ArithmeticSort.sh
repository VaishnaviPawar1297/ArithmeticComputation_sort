#!bin/bash -x
#taking inputs
read -p "Enter value of a:" a
read -p "Enter value of b:" b
read -p "Enter value of c:" c
result1=$(($a + $b + $c))
echo "compute a+b+c: "$result1
#Compute a+b*c
result2=$(($a + $b * $c))
echo "compute a+b*c: "$result2
#Compute a+b*c
result3=$(($a + $b * $c))
echo "compute a+b*c: "$result3
