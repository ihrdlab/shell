echo "WELCOME TO THE CALCULATOR"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Exit"
echo -n "Enter your choice: "
read choice
echo -n "Enter first number: "
read num1
echo -n "Enter second number: "
read num2

case $choice in
1)
    result=$(($num1 + $num2))
    echo "The result is : $result"
    ;;
2)
    result=$(($num1 - $num2))
    echo "The result is : $result"
    ;;
3)
    result=$(($num1 * $num2))
    echo "The result is : $result"
    ;;
4)
    result=$(echo "scale=2; $num1 / $num2" | bc)
    echo "The result is : $result"
    ;;
5)
    exit 0
    ;;
*)
    echo "Invalid Choice"
    ;;
esac

