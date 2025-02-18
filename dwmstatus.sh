#!/usr/bin/env bash

get_charging_status() {
    cat "/sys/class/power_supply/BAT0/status"
}

get_charge() {
    cat "/sys/class/power_supply/BAT0/capacity"
}

get_datetime() {
    date +"%a %d %b %Y   %I:%M %p %Z"
}

xsetroot -name "   $(get_datetime)   $(get_charge)% ($(get_charging_status))   ";
