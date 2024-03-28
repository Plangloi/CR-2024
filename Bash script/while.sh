#!/bin/bash

i=1

while [[ $i -lt 10 ]]; do
	echo "blablabla"
	(( i += 1  ))
	echo " $i emme iteration"
done

echo " Fin Programme a la $i emme iteration "
