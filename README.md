# Memrise Point Hack
This is a little tool that allows you to increase your points on Memrise!

# !! THIS TOOL NO LONGER WORKS !!
Memrise has updated how they do their end of session requests. Both by changing the URL and removing bonus points (as far as I can tell), which was what was used to increment points. At first glance there isn't an obvious fix and to be honest since I don't use this anymore, I don't really inntend to look for one. If you used this tool, I hope you enjoyed your days of getting around homework 😜

## Disclaimer
This tool should be used for educational purposes only. The creator shall not be held responsible for any unforeseen circumstances caused by this script.

## Prerequisites
Before we continue, make sure you are logged into Memrise and are using a suitable broswer such as Chrome (or any other chromium based ones) or Firfox.
<br>
If you don't already, please go download [Git](https://git-scm.com/downloads) as you will need Git Bash (this will NOT work in cmd or ps). Or if you are running linux, just put it in the terminal. Mac, I have no clue, this will probably work the same.

## Setup
For this tool you will need the following: your cookies and csfr token. Here is how you should go about getting these!

- Go onto [Memrise](https://app.memrise.com/home/)
- Open inspect element (right click and hit Inspect) and go into the networking tab. Leave this open, we will need it later
- Find a course and do a speed review session. Once you reach your review summary page, STOP!
- Go back to your inspect element. Somewhere near the bottom of the networking tab, find the text that says something along the lines of "session_end/" or "ajax/session_end". Click it.
- Once there scroll down to the request headers and find the header that starts with "Cookie:"
  - Now select everything after "Cookie: " inside the box that will appear around this.
  - Open memrise-hack.sh and paste this where it says "PASTE COOKIE HERE". Make sure to keep it inside the speech marks.
- In the same area, under Request Headers, find the header that starts with "X-CSRFToken:"
  - Now select everything after "X-CSRFToken: " inside the box that will appear around this.
  - Open memrise-hack.sh and paste this where it says "PASTE CSRFTOKEN HERE". Make sure to keep it inside the speech marks.
- Now, run the script in git bash (by typing "./memrise-hack.sh"), enter your course id and amount of points and you shall (probably) recieve them! Whilst you can go over 2000 points, this will take more time for them to be given. I wouldn't recommend going for really large amount of points, though. The highested I have tested is 10,000 points, which seemed to work fine, so use at your own risk!

If something is not working, feel free to add me on discord or email me. Those details can be found on my [account page](https://github.com/IsGabriellaCurious).

## How this works
This tool abuses a flaw in Memrise's session_end endpoint which doesn't seem to require much validation to use. Some of the values sent using this endpoint is "total_points" and "bouns_points". The total points that are being sent over seem to be regulated and therefore you cannot use this to increase your points. However, the bonus points parameter doesn't have any protection against it, meaning you can set as many points as you like and they will be added to your account. Memrise actually limits you to a max of 2000 points in bonus_points per request, but I have worked around this by giving 2k points every 3 seconds until you have all the points (if the points left goes below 2k, it will just give the rest. This means you can essentially give any value you want!). 

