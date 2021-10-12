#!/bin/bash -x

function celsiusToFahrenheit() {
		if (( $1 >= 0 && $1 <= 100 ))
      then
            a=`awk 'BEGIN {print 9 / 5}'`
            b=`awk 'BEGIN {print '$1' * '$a'}'`
            c=`awk 'BEGIN {print '$b' + 32}'`
           echo "Fahrenheit is $c"
      else
         echo "This is not valid number"
      fi


}

function fahrenheitToCelsius() {
		f=$1
		if (( $f >= 32 && $f <= 212 ))
      then
            a=`awk 'BEGIN {print '$f' - 32}'`
            b=`awk 'BEGIN {print 5 / 9}'`
            c=`awk 'BEGIN {print '$a' * '$b'}'`
            echo "Celsius is $c"
      else
            echo "This is not valid number"
      fi

}
echo "1. Convert Celsius to Fahrenheit "
echo "2. Convert Fahrenheit to Celsius "
read -p "Enter your choice :: " num
case $num in
   1)  read -p "Please enter Celsius number :: " C
		 celsiusToFahrenheit $C
		 ;;
   2)  read -p "Please enter Fahrenheit number :: " F
		 fahrenheitToCelsius $F
		 ;;
esac
