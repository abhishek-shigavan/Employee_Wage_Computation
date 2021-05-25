#!/bin/bash -x

echo " Welcome To Employee Wage Computation "

isPresent=1
wagePerHour=20

        attendanceChecker=$(($RANDOM%2))

        if [ $attendanceChecker -eq $isPresent ]
        then
                empWorkingHour=8
                echo " Employee is Present "
        else
                empWorkingHour=0
                echo " Employee is Absent "
        fi

        wage=$(($empWorkingHour * $wagePerHour))

echo " Wage for a Day : $wage "

