# Memrise Point Hack
This is a little tool that allows you to increase your points on Memrise!

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
- Now, run the script in git bash (by typing "./memrise-hack.sh"), enter your course id and amount of points and you shall (probably) recieve them! Please note the max amount you can give yourself at a time is 2000. I am working on a way to increase this number.

If something is not working, feel free to add me on discord or email me. Those details can be found on my [account page](https://github.com/IsGabriellaCurious).

## How this works
This tool abuses a flaw in Memrise's session_end endpoint which doesn't seem to require much validation to use. Some of the values sent using this endpoint is "total_points" and "bouns_points". The total points that are being sent over seem to be regulated and therefore you cannot use this to increase your points. However, the bonus points parameter doesn't have any protection against it, meaning you can set as many points as you like and they will be added to your account. Please note any values over 2000 will just defaulted to 2000 by their endpoint.

