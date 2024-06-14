#!/usr/bin/env python3
import requests
import json


def get_leetcode_stats():
    url = "https://alfa-leetcode-api.onrender.com/PhantomCrunhTz/solved"
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        stats = {
            "easy": data["easySolved"],
            "medium": data["mediumSolved"],
            "hard": data["hardSolved"],
        }
        # Format the output for Waybar
        waybar_output = {
            "text": f"[ <span color='#9ccfd8'>Easy: {stats['easy']}</span> <span color='#f6c177'>Medium: {stats['medium']}</span> <span color='#eb6f92'>Hard: {stats['hard']}</span> ]",
            "tooltip": "LeetCode Statistics",
            "class": "leetcode-stats",
        }
        return json.dumps(waybar_output)
    else:
        return json.dumps({"text": "Error fetching data", "class": "error"})


if __name__ == "__main__":
    print(get_leetcode_stats())
