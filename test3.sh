clear
sum=0
i="y"
echo "Enter First Number:"
read n1
echo "Enter Second Number:"
read n2
while [ $i = "y" ]
do
echo "1.Addition."
echo "2.Subtraction."
echo "3.Multiplication."
echo "4.Division."
echo "5.Modulus."
echo "Enter choice."
read ch
case $ch in
1)sum=$(echo " $n1 + $n2" | bc -l)
echo "Sum is =" $sum;;
2)sum=$(echo "$n1 - $n2" | bc -l)
echo "Subtraction is =" $sum;;
3)sum=$(echo "$n1 * $n2" | bc -l)
echo "Multiplication is =" $sum;;
4)sum=$(echo "$n1 / $n2" | bc -l)
echo "Division is =" $sum;;
5)sum=$(echo "$n1 % $n2" | bc -l)
echo "Modulus is =" $sum;;
*)echo "invalid choice"
esac
echo "Do you want to continue.(y/n)"
read i
if [ $i != "y" ]
then
exit
fi
done
