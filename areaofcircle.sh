echo "Enter the radius of circle:"
read r
area=$(echo "3.14 * $r * $r" | bc)
echo "Area of the circle is $area"

