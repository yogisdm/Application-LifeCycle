#!/bin/sh
echo "Hello world";
result=$(curl -X GET --header "Accept: application/json" "https://calendarific.com/api/v2/holidays?&api_key=d20d05ccb411d9ce3b56b654971e17a29b0aa1ed&country=IN&year=2021")
echo "Response from server"
echo $result