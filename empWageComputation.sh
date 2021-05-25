#!/bin/bash -x

echo " Welcome To Employee Wage Computation "

isPresent=1
isParttimePresent=2
wagePerHour=20

        attendanceChecker=$(($RANDOM%3))

case $attendanceChecker in

        $isPresent)
                empWorkingHour=8
                echo " Employee is Present " ;;
        $isParttimePresent)
                empWorkingHour=4
                echo " Employee is Part Time Present " ;;
        *)
                empWorkingHour=0
                echo " Employee is Absent " ;;
esac

        wage=$(($empWorkingHour * $wagePerHour))

echo " Wage for a Day : $wage "

