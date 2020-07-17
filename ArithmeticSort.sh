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
#Compute a*b+c
result3=$(($a * $b + $c))
echo "compute a*b+c: "$result3
#Compute c+a/b
result4=$(($c + $a / $b))
echo "compute c+a/b: "$result4
#Compute a%b+c
result5=$(($a % $b + $c))
echo "compute a%b+c: "$result5
#Result store into dictionary
DICT[result1]=$result1
DICT[result2]=$result2
DICT[result3]=$result3
DICT[result4]=$result4
DICT[result5]=$result5
#result store Dictionary to array
ARR[0]=${DICT[result1]}
ARR[1]=${DICT[result2]}
ARR[2]=${DICT[result3]}
ARR[3]=${DICT[result4]}
ARR[4]=${DICT[result5]}
