#!/bin/sh -e

# Exit if the environment variables are not defined
[ -z "$OPENWEATHERMAP_APIKEY" ] && echo "API Key not defined" && exit 1;
[ -z "$WTSPEAK_DEFAULT_CITY_ID" ] && echo "Default city ID not defined" && exit 1;

# Note: '&units=metric' is used in order to get temperatures in Celsius (in Kelvin by default)
WEATHER_URL="http://api.openweathermap.org/data/2.5/forecast/city?id=$WTSPEAK_DEFAULT_CITY_ID&APPID=$OPENWEATHERMAP_APIKEY&units=metric"

# display_usage(){
# 
# }

curl_weather(){
	day="$1" # 0 today, 1: tomorrow, etc
	curl -s "$WEATHER_URL"| jq ".list[$1]| .dt_txt"
# 	curl -s "$WEATHER_URL"| jq ".list[$1] | .dt_txt, .weather[].description"
}
