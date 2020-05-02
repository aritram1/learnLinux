# for loop

echo '1 (classic way)'
for (( count=0; count<10;count++))
do
echo 'count is '$count
done

echo '2 (for bash --version > 4.0)'
for count2 in {0..10..2}
do
echo 'count2 is '$count2
done

echo '3 (for ..in)'
for value in 1 2 3 4 5
do
echo 'value is '$value
done

# End of fun
