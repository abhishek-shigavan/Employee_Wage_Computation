#!/bin/bash -x

echo " Welcome To Employee Wage Computation "

isPresent=1
isParttimePresent=2
wagePerHour=20
dayPerMonth=20

monthlyWage=0

for((day=1; day<=$dayPerMonth; day++))
do

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

        dailyWage=$(($empWorkingHour * $wagePerHour))
        monthlyWage=$(($monthlyWage + $dailyWage))
done

echo " Monthly Wage : $monthlyWage "

