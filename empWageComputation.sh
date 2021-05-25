#!/bin/bash -x

echo " Welcome To Employee Wage Computation "

isPresent=1

        attendanceChecker=$(($RANDOM%2))

        if [ $attendanceChecker -eq $isPresent ]
        then
                echo " Employee is Present "
        else
                echo " Employee is Absent "
        fi

