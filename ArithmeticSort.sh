#!bin/bash -x
#taking inputs
echo "conflict"
echo "sorting conflict 1 created by Shubham"
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
#Sort into Decending order
for ((ENTRY=0 ; ENTRY<5 ; ENTRY++))
do
   for ((ELEMENT=0 ; ELEMENT<5-ENTRY-1 ; ELEMENT++))
   do
      if ((${ARR[ELEMENT]} < ${ARR[$((ELEMENT+1))]} ))
      then
         TEMP=${ARR[ELEMENT]}
         ARR[$ELEMENT]=${ARR[$((ELEMENT+1))]}
         ARR[$((ELEMENT+1))]=$TEMP
       fi
   done
done

echo "Decending Array:"
for ((ELEMENT=0; ELEMENT<5; ELEMENT++))
do
   echo ${ARR[ELEMENT]}
done
#Sort into Ascending Order.
for ((ENTRY=0 ; ENTRY<5 ; ENTRY++))
do
   for ((ELEMENT=0 ; ELEMENT<5-ENTRY-1 ; ELEMENT++))
   do
      if ((${ARR[ELEMENT]} > ${ARR[$((ELEMENT+1))]} ))
      then
         TEMP=${ARR[ELEMENT]}
         ARR[$ELEMENT]=${ARR[$((ELEMENT+1))]}
         ARR[$((ELEMENT+1))]=$TEMP
      fi
   done
done

echo "Ascending Array:"
for ((ELEMENT=0; ELEMENT<5; ELEMENT++))
do
   echo ${ARR[ELEMENT]}
done

