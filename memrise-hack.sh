#!/bin/bash

# Enter your codes here. DO NOT INLUCDE THE "Cookies: " AND "X-CSRFToken: " HEADERS. THERE SHOULD BE NO SPACE AT THE START
cookieCode="PASTE COOKIE HERE"
csrfToken="PASTE CSRFTOKEN HERE"

# Don't edit any of this
echo "Memrise Hack - by Gabriella Kaitlyn"
echo " "
echo "To start with, please enter your course id below!"
read -p "ID : " id
echo "Epic, now enter how many points you want."
read -p "Points : " points
echo "Attempting to give you the points!"
curl "https://app.memrise.com/ajax/session_end/" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0" -H "Accept: application/json, text/javascript, */*; q=0.01" -H "Accept-Language: en-GB,en;q=0.5" --compressed -H "Referer: https://app.memrise.com/course/1553511/4-town-to-countryside-edexcel-9-1-french/garden/speed_review/?recommendation_id=75b8a96a-7116-41e4-a140-b6358fb489f1" -H "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" -H "X-CSRFToken: $csrfToken" -H "X-Requested-With: XMLHttpRequest" -H "Origin: https://app.memrise.com" -H "Connection: keep-alive" -H "Cookie: $cookieCode" -H "TE: Trailers" --data-raw "course_id=$id&total_points=0&bonus_points=$points&category_id=&session_type=speed_review&learnable_ids=[]"
echo "Now go check your memrise!"