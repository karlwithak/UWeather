#!/bin/bash

wget -q -O- http://weather.uwaterloo.ca/waterloo_weather_station_data.xml | grep -e 'temperature' -e 'observation_time' -e 'wind_speed_kph' -e 'precipitation_1hr_mm' | sed -e 's/<\/.*>//' -e 's/>/:  /' -e 's/<//'
