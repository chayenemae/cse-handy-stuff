#Get the users shortname
echo “Enter your username ie. cbanta: ” 
read shortname

#Make a backup of the insisting config file
cp /Users/cbanta/.aws/config /Users/cbanta/.aws/config.backup

#Copy the local template into the users aws config directory
cp config /Users/cbanta/.aws/config

#Replace "username" with shortname input
sed -i -e "s/username/$shortname/g" "/Users/cbanta/.aws/config"