#!/usr/bin/env python3
import requests
import json


def get_leetcode_stats():
    url = "https://leetcode-stats-api.herokuapp.com/PhantomCrunhTz"
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()

        stats = [
            {"icon": " ", "value": data["easySolved"], "color": "#9ccfd8"},
            {"icon": " ", "value": data["mediumSolved"], "color": "#f6c177"},
            {"icon": " ", "value": data["hardSolved"], "color": "#eb6f92"},
        ]

        waybar_output = {
            "text": "[ "
            + " ".join(
                [
                    f"<span color='{stat['color']}'>{stat['icon']}{stat['value']}</span>"
                    for stat in stats
                ]
            )
            + " ]",
            "tooltip": "LeetCode Statistics",
            "class": "leetcode-stats",
        }
        return json.dumps(waybar_output)
    else:
        return json.dumps({"text": "[  ]", "class": "error"})


if __name__ == "__main__":
    print(get_leetcode_stats())
