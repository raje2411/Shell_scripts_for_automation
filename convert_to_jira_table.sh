if [ "$1" == "-h" -o "$1" == "-help" -o "$1" == "--help" ]; then
	echo $'\nHow to run:'
	echo $'\nbash convert_to_jira_table.sh <<input_file.csv>>\n\n'
	echo $'example:   bash convert_to_jira_table.sh input1.csv'
	exit 0
fi
chmod 755 convert_to_jira_table.sh
sed 's/^/|/' $1  >> "intermediate.csv"
sed 's/,/|/g' "intermediate.csv"  > $1 
rm -rf "intermediate.csv"
