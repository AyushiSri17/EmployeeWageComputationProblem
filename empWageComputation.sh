echo "Welcome to Employee Wage Computation Program"
isPresent=$((RANDOM%3));
perHourSalary=20;
workingHour=0;
case $isPresent in
	0)
	echo "Employee is absent";
	workingHour=0;
	;;

	1)
	echo "Employee is present";
	workingHour=8;
	;;

	2)
	echo "Employee is working as part time";
	workingHour=4;
	;;
esac
salary=$(($perHourSalary * $workingHour));
echo "Employee has earned $salary $ today";
