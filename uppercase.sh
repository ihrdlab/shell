echo "enter the filename"
read filename
if [ ! -f $filename ]
then
echo "file $filename does not exist"
exit
fi
tr \ ' [a-z]' \ ' [A-Z]' <$filename

