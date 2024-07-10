#!/usr/bin/env python3
import requests
import json
import os
from datetime import datetime, timedelta
from dotenv import load_dotenv

load_dotenv()
api_key = os.getenv("WAKATIME_API_KEY")
user_id = os.getenv("WAKATIME_USER_ID")


def get_wakatime_stats():
    current_date = datetime.now().strftime("%Y-%m-%d")
    url = f"https://wakatime.com/api/v1/users/{user_id}/durations?date={current_date}"
    response = requests.get(url, headers={"Authorization": f"Basic {api_key}"})
    if response.status_code == 200:
        data = response.json()["data"]
        total_duration_seconds = sum(item["duration"] for item in data)
        total_duration = str(timedelta(seconds=total_duration_seconds))
        hours, minutes = total_duration.split(":")[:2]
        hours = int(hours)

        color = ""
        icon = ""
        if hours < 3:
            color = "#9ccfd8"
            icon = " "
        elif hours <= 7:
            color = "#f6c177"
            icon = " "
        else:
            color = "#eb6f92"
            icon = " "

        waybar_output = {
            "text": f"[ <span color='{color}'>{icon}</span>{hours}h {minutes}m ]",
            "class": "wakatime-stats",
        }
        return json.dumps(waybar_output)
    else:
        return json.dumps({"text": "WakaTime data unavailable"})


if __name__ == "__main__":
    if api_key:
        print(get_wakatime_stats())
    else:
        print("API key is missing")
