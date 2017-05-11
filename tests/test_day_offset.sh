#!/usr/bin/env bash

# 
# This test aims at verifying that weatherspeaker correctly fetches weather
# using the '-d' option
# 

for day_offset in `seq 1 4`; do
	espeak "Day offset: ${day_offset}"
	weatherspeaker -d "${day_offset}"
	if [[ "$?" -ne 0 ]]; then
		exit "${day_offset}"
	fi
	sleep 2
done

