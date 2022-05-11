#!/bin/bash

# Enter your codes here. DO NOT INLUCDE THE "Cookies: " AND "X-CSRFToken: " HEADERS. THERE SHOULD BE NO SPACE AT THE START OR END
cookieCode="_ga=GA1.2.888370089.1643553731; _fbp=fb.1.1643553731041.632307466; __gads=ID=4858c9d598260515-22ff97a594cf002b:T=1644056554:RT=1644056554:S=ALNI_MZnbT4UcXSBzCaGK7B4MVP8xCloug; hubspotutk=b40d91878b59f84abaf99b4c3592783b; G_ENABLED_IDPS=google; ab.storage.deviceId.81b5a720-d869-44a3-b051-fbf0e709467a={"g":"08b10215-34b9-1a26-bf14-ef06a889a846","c":1644056564969,"l":1644056564969}; __stripe_mid=a0b8ac4a-4f38-4fa8-bb9e-56aad6864430c1479b; ab.storage.userId.81b5a720-d869-44a3-b051-fbf0e709467a={"g":"60265642","c":1644056583546,"l":1644056583546}; sessionid_2=hzzbfz117bqlukfa10bhx2mjvzauf0idp; cookieconsent_status=allow; __hstc=179716859.b40d91878b59f84abaf99b4c3592783b.1644056554764.1644056554764.1650796700267.2; ajs_user_id=60265642; ajs_anonymous_id=23f22af1-7c88-428f-8fd1-752a2532f0f4; __stripe_sid=0e911fb5-0dcd-47a7-ad87-aa09a550c3acb8b8e7; oneDayAdditionalExecutionLimitLastExecutionTimestampXx=1652283644; i18next=en; csrftoken=Wc6DctoslqOPcNsXsvBs4DPnZwHms4AU7Nkk3IrH1mVSCsavQbQtKWCBG9ep5m2x; _gid=GA1.2.1940288881.1652284059; _gcl_au=1.1.431632826.1652284059; _gat=1; ab.storage.sessionId.81b5a720-d869-44a3-b051-fbf0e709467a={"g":"d44525db-c8cd-bf4b-a4da-8370bf4c2da6","e":1652284437093,"c":1652284385559,"l":1652284407093}"
csrfToken="Wc6DctoslqOPcNsXsvBs4DPnZwHms4AU7Nkk3IrH1mVSCsavQbQtKWCBG9ep5m2x"

# -- Don't edit anything below this -- 

# Functions
function givePoints {
    curl "https://app.memrise.com/ajax/session_end/" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0" -H "Accept: application/json, text/javascript, */*; q=0.01" -H "Accept-Language: en-GB,en;q=0.5" --compressed -H "Referer: https://app.memrise.com/course/1553511/4-town-to-countryside-edexcel-9-1-french/garden/speed_review/?recommendation_id=75b8a96a-7116-41e4-a140-b6358fb489f1" -H "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" -H "X-CSRFToken: $csrfToken" -H "X-Requested-With: XMLHttpRequest" -H "Origin: https://app.memrise.com" -H "Connection: keep-alive" -H "Cookie: $cookieCode" -H "TE: Trailers" --data-raw "course_id=$id&total_points=0&bonus_points=$1&category_id=&session_type=speed_review&learnable_ids=[]"
}

# Interface code
echo "Memrise Hack - by Gabriella Kaitlyn"
echo " "
echo "To start with, please enter your course id below!"
read -p "ID : " id
echo "Epic, now enter how many points you want."
read -p "Points : " points
echo "Attempting to give you the points!"

# The actual giving of the points
if [ $points -le 2000 ]
then
    echo "Below 2000, all have been given."
    givePoints $points
else 
    while [ $points -ne 0 ]; do 
        if [ $points -le 2000 ]
        then
            echo "Done final give of $points"
            givePoints $points
            points=0
        else
            givePoints 2000
            points=`expr $points - 2000`
            echo "Give 2000 more points. $points remaining"
            sleep 3s # So we don't get ratelimited
        fi    
    done
fi        

echo "Now go check your memrise!"
