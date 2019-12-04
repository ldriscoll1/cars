#! /bin/bash
# cars.sh
# Luke Driscoll
CHOICE=0
while [ $CHOICE -ne 3 ]
do
	echo "Type the number 1 to enter a new car"
	echo "Type the number 2 to display the list of cars"
	echo "Type the number 3 to quit and exit the program"
	read CHOICE
	case "$CHOICE" in	
		"1") echo
			echo "Please enter the year that the car was made"
			read YEAR
			echo "Please enter the make of the car"
			read MAKE
			echo "Please enter the model of the car"
			read MODEL
			echo "$YEAR:$MAKE:$MODEL" >> My_old_cars;;	
		"2") echo
			sort ~/bin/cars/My_old_cars;;

		"3") echo
			echo "Goodbye"
			break;;
	esac
done
