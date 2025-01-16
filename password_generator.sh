echo ".....password generator....."

echo "Please select how many passwords you want: "
read PASS_QTY

echo "Select the length of the password (1-64): "
read PASS_LENGTH

echo
echo "...Generating passwords..."
echo

for p in $(seq 1 $PASS_QTY); do
    echo "Password $p: " $(openssl rand -base64 48 | cut -c1-$PASS_LENGTH)
done

