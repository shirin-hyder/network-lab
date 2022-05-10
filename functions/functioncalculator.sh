#!/bin/bash
function calculator( )
{
	(( m = $1+$2+$3 ))
	echo "sum is $m"

	(( m = $1*$2*$3 ))
        echo "Product is $m"

	  (( m = $1-$2-$3 ))
        echo "difference is $m"

}
a=5
b=5
c=5
calculator $a $b $c


