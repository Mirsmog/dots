#!/usr/bin/env python3
import requests
import json


def get_leetcode_stats():
    url = "https://leetcode-stats-api.herokuapp.com/PhantomCrunhTz"
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        stats = {
            "easy": data["easySolved"],
            "medium": data["mediumSolved"],
            "hard": data["hardSolved"],
        }
        waybar_output = {
            "text": f"[ <span color='#9ccfd8'> {stats['easy']}</span> <span color='#f6c177'> {stats['medium']}</span> <span color='#eb6f92'> {stats['hard']}</span> ]",
            "tooltip": "LeetCode Statistics",
            "class": "leetcode-stats",
        }
        return json.dumps(waybar_output)
    else:
        return json.dumps({"text": "¯\_(ツ)_/¯", "class": "error"})


if __name__ == "__main__":
    print(get_leetcode_stats())
