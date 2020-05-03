# Control statements control the flow of the program execution

# Most notables are :

# if-else
num=100
if [[ $num>0 ]] #note this format [[ <Expression> ]]
    then
    echo $num 'is positive'
else # or 'elif [[ <Expression> ]]
    echo $num 'is negative'
fi
# Expected : 100 is positive

# -------------------------------------------------------
# switch-case
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
num=10
while [ $num -gt 0 ] #while : # alternatively while[[ $num -gt 0 ]]
    do
    if [ $num -gt 5 ]
    then
        echo 'continuing with' $num
        # continue
    else
        echo 'breaking at' $num
        break
    fi
    num=$(($num-1)) # or ((num--)) -> be careful (($num--)) does not work
    done
