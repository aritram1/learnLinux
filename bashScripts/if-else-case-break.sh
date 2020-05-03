# Control statements control the flow of the program execution

# Most notables are :

# if-else-elif
num=100
if [ $num>0 ] #note this format [ <Expression> ]
    then
    echo $num 'is positive'
else # or 'elif [ <Expression> ]
    echo $num 'is negative'
fi
# Expected : 100 is positive

# -------------------------------------------------------
# switch case control statement
weekday=$(date "+%A")
echo 'Today is' $weekday
case $weekday in
    Monday | Tuesday | Wednesday )     # Note this format ')'
        echo "It's first 3 working days";;  # Note the ';;'
    Thursday | Friday )
        echo "It's last 2 working days";;
    * )                                # default value
        echo "It's weekend!";;
esac        
# Expected today's result :)
# Today is Sunday
# It's weekend!

# -------------------------------------------------------
# Also let's have a look at break/continue statement by 
# printing all positive numbers till maximum number
maximum=10; val=-10
while : # -> infinite loop
    do
    (( val++ )) # note no $ sign. alternatively -> val=$((val-1))
    if [ $val -lt 0 ]; then
        echo 'ignoring negatives' $val
        continue
    fi
    echo 'considering positive values' $val
    if [ $val -eq $maximum ]; then  
        echo 'breaking at' $val
        break
    fi
    done
    
#End of fun :)
