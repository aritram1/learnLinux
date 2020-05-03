max=15; value=0;
echo 'Increment with a step 1'
while [ $value -lt $max ] 
do
echo 'Increment : Inside while the value is' $value
(( value++ )) # same as -> value=$(($value+1)) 
done

min=0; value=$max; step=3
echo 'Decrement with a step 3'
while [ $value -gt $min ] 
do
echo 'Decrement : Inside while the value is' $value
value=$(($value-$step))
done

# Note
# -lt/-gt etc are OPs, Other OPs can be -gt, -le (less or equal to) etc
# for infinite loop just write -> while :
# ref : https://linuxhint.com/bash-while-loop-examples/

#End of fun 
