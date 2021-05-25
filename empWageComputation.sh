#!/bin/bash -x

echo " Welcome To Employee Wage Computation "

isPresent=1
isParttimePresent=2
wagePerHour=20
dayPerMonth=20
maximumWorkingDay=20
maximumWorkingHour=100

totalWage=0
totalWorkingHour=0

for((day=1; day<=$dayPerMonth; day++))
do

        if [ $day -le $maximumWorkingDay -a $totalWorkingHour -lt $maximumWorkingHour ]
        then
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

                totalWorkingHour=$(($totalWorkingHour + $empWorkingHour))

                dailyWage=$(($empWorkingHour * $wagePerHour))

                totalWage=$(($totalWage + $dailyWage))
        else
                break
        fi

done

echo " Total Wage : $totalWage "

