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
# Also let's have a look at break/continue statement
breakAt=10; val=0
while : # -> infinite loop
    do
    (( val++ )) # be careful no $, alternatively -> val=$((val-1))
    if [ $val -ne $breakAt ]
        then
        echo 'continuing with' $val
        continue
    else
        echo 'breaking at' $val
        break
    fi
    done
