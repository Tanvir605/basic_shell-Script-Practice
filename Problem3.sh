#!/bin/bash
pass=0
fail=0
echo "Enter number of students :"
read n

for ((i=1; i<=n; i++))
do
echo "student $i "
echo "Enter student id: "
read sid

echo "Enter marks of 3 subjects: "
read m1
read m2
read m3
total=$((m1+m2+m3))
percentage=$((total * 100/300))

if [ $percentage -ge 80 ]
then
grade="A"
result="Pass"
pass=$((pass + 1))

elif [ $percentage -ge 60 ]
then
grade="B"
result="Pass"
pass=$((pass + 1))

elif [ $percentage -ge 40 ]
then
grade="C"
result="Pass"
pass=$((pass + 1))

else
grade="F"
result="Fail"
fail=$((fail + 1))
fi

echo "Student ID: $sid"
echo "Total marks: $total/300"
echo "Percentage: $percentage%"
echo "Grade: $grade"
echo "Result: $result"
done

echo "Final summary "
echo "Total students: $n"
echo "Total passed: $pass"
echo "Total failed: $fail"
