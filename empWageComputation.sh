#!/bin/bash -x

echo " Welcome To Employee Wage Computation "

isPresent=1
isParttimePresent=2
dayPerMonth=20
wagePerHour=20
maxWorkingDay=20
maxWorkingHour=100

totalWorkingHour=0
totalWage=0

function getWorkingHour()
{
        case $1 in
                $isPresent)
                        empWorkingHour=8 ;;

                $isParttimePresent)
                        empWorkingHour=4 ;;

                *)
                        empWorkingHour=0 ;;
        esac

        echo $empWorkingHour
}

for((day=1; day<=$dayPerMonth; day++))
do

        if [ $day -le $maxWorkingDay -a $totalWorkingHour -lt $maxWorkingHour ]
        then

                dailyWorkingHour="$( getWorkingHour $(($RANDOM%3)) )"

                totalWorkingHour=$(( $totalWorkingHour + $dailyWorkingHour ))

                dailyWage=$(( $dailyWorkingHour * $wagePerHour ))

                totalWage=$(( $totalWage + $dailyWage ))
        else
                break
        fi
done

echo " Total Wage : $totalWage "

