#!/bin/bash

touchpad_id=$(xinput list | grep Touchpad | awk '{print $6}' | awk -F '=' '{print $2}')
natural_scroll_id=$(xinput list-props $touchpad_id | grep 'Natural Scrolling' | grep -v 'Default' | awk '{print $5}' | sed 's/(//g' | sed 's/)://g')
tapping_id=$(xinput list-props $touchpad_id | grep 'Tapping Enabled' | grep -v 'Default' | awk '{print $4}' | sed 's/(//g' | sed 's/)://g')
xinput set-prop $touchpad_id $tapping_id 1
xinput set-prop $touchpad_id $natural_scroll_id 1
