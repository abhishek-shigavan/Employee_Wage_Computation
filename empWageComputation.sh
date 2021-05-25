#!/bin/bash -x

echo " Welcome To Employee Wage Computation "

isPresent=1
isParttimePresent=2
wagePerHour=20

        attendanceChecker=$(($RANDOM%3))

        if [ $attendanceChecker -eq $isPresent ]
        then
                empWorkingHour=8
                echo " Employee is Present "
        elif [ $attendanceChecker -eq $isParttimePresent ]
        then
                empWorkingHour=4
                echo " Employee is Part Time Present "
        else
                empWorkingHour=0
                echo " Employee is Absent "
        fi

        wage=$(($empWorkingHour * $wagePerHour))

echo " Wage for a Day : $wage "

