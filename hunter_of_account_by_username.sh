#!/bin/bash

function github() {
	
	baseUrl="https://github.com"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on Github"
	else 
		echo "$username does not exists on Github"
	fi
}

function reddit() {
	baseUrl="https://www.reddit.com/user"
	for i in {1..5}; do
		statusCode=$(curl -I -s -L "$baseUrl/$username" \
	   -H 'upgrade-insecure-requests: 1' \
  	   -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36' \
  	   -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  	   -H 'accept-language: en-GB,en;q=0.9' \
  	   --compressed | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)

	  if (( statusCode == 200 )); then
	  	echo "$username exists on Reddit"
	  	break
	  elif (( statusCode == 404 )); then
	  	echo "$username does not exists on Reddit"
	  	break
	  elif (( statusCode == 504 )); then
	  	continue
	  else
	  	echo "$username does not exists on Reddit"
	  	break
	  fi
	done
}

function devTo() {
	baseUrl="https://dev.to"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on DEV Community"
	else 
		echo "$username does not exists on DEV Community"
	fi
}


function discord() {
	baseUrl="https://discord.com/api/v9/users"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on Discord"
	else 
		echo "$username does not exist on Discord"
	fi
}

function youtube() {
	baseUrl="https://www.youtube.com/user"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on YouTube"
	else 
		echo "$username does not exist on YouTube"
	fi
}

function twitter() {
	baseUrl="https://twitter.com"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on Twitter"
	else 
		echo "$username does not exist on Twitter"
	fi
}

function codepen() {
	baseUrl="https://codepen.io"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on CodePen"
	else 
		echo "$username does not exist on CodePen"
	fi
}

function notion() {
	baseUrl="https://www.notion.so"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on Notion"
	else 
		echo "$username does not exist on Notion"
	fi
}

function fivem() {
	baseUrl="https://forum.cfx.re/u"
	statusCode=$(curl -I -s -L "$baseUrl/$username/summary" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on FiveM Forum"
	else 
		echo "$username does not exist on FiveM Forum"
	fi
}

function minecraft() {
	baseUrl="https://namemc.com/profile"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on NameMC"
	else 
		echo "$username does not exist on NameMC"
	fi
}

function feedly() {
	baseUrl="https://feedly.com/i/spotlight"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on Feedly"
	else 
		echo "$username does not exist on Feedly"
	fi
}

function stackoverflow() {
	baseUrl="https://stackoverflow.com/users"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on Stack Overflow"
	else 
		echo "$username does not exist on Stack Overflow"
	fi
}

function instagram() {
	baseUrl="https://www.instagram.com"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on Instagram"
	else 
		echo "$username does not exist on Instagram"
	fi
}

function twitch() {
	baseUrl="https://www.twitch.tv"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on Twitch"
	else 
		echo "$username does not exist on Twitch"
	fi
}

function mastodon() {
	baseUrl="https://mastodon.social"
	statusCode=$(curl -I -s -L "$baseUrl/@$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on Mastodon"
	else 
		echo "$username does not exist on Mastodon"
	fi
}

function kickstarter() {
	baseUrl="https://www.kickstarter.com/profile"
	statusCode=$(curl -I -s -L "$baseUrl/$username" | grep -w "HTTP" | cut -d " " -f2 | tail -n 1)
	if (( statusCode == 200 )); then
		echo "$username exists on Kickstarter"
	else 
		echo "$username does not exist on Kickstarter"
	fi
}



function huntSocialMedia() {
	github
	reddit
	devTo
	discord
	youtube
	twitter
	codepen
	notion
	fivem
	minecraft
	feedly
	stackoverflow
	instagram
	twitch
	mastodon
	kickstarter
}

username=$1
if [ -z $1 ]; then
	read -p "Enter Username: " username
fi

huntSocialMedia
