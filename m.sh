#!/bin/bash

#!/bin/bash
sum()
{
        echo "printing"
	echo the a value is = $a
	echo the b value is = $b
	echo the c value is = $c
        d=$(($a + $b + $c))
        echo $d
}
echo "enter the data here"
read a
read b
read c
sum 
