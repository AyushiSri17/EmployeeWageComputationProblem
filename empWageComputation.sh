echo "Welcome to Employee Wage Computation Program"
function calculateWorkingHour() {
	case $1 in
		0)
			workingHour=0;
			;;

		1)
			workingHour=8;
			;;
		2)
			workingHour=4;
			;;
	esac;
	echo $workingHour;
}

perHourSalary=20;
totalSalary=0;
totalWorkingHour=0;
day=1;

declare -A day

while [[ $day -le 20 && $totalWorkingHour -lt 40 ]]
do
	wHour=$(calculateWorkingHour $((RANDOM%3)));
	totalWorkingHour=$(($totalWorkingHour + $wHour));
	if [ $totalWorkingHour -gt 40 ]
	then
		totalWorkingHour=$(($totalWorkingHour - $wHour));
		break;
	fi
	salary=$(($perHourSalary * $wHour));
	totalSalary=$(($totalSalary + $salary));
	((day++));

echo "Daily Wage: "${salary[*]}
echo "Total Wage: "${totalSalary[*]}
echo "Day: "${day[*]}

n[$day]=${salary[*]}
tn[$totalWorkingHour]=${totalSalary[*]}
d[$day]=${day[*]}
done

echo "Daily Wage: ["${n[*]}"]"
echo "Total Wage: ["${tn[*]}"]"
echo "Day: ["${d[*]}"]"

echo "Employee has earned $totalSalary $ in a month (Total working Hour : $totalWorkingHour)";
