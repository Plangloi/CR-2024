#!/bin/bash

until [[ $order == "beer" ]]; do
    echo "Would you like coffee or tea?"
    read order

done
echo "Excellent Choice have a nice $order !!!"
