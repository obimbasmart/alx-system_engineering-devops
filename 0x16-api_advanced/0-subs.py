#!/usr/bin/python3
"""queries the Reddit API and returns the number of subscribers
for a given subreddit"""

import json
import requests


def number_of_subscribers(subreddit):
    """return number of subscribers for a subreddit"""

    headers = {'User-Agent': 'my-app/0.0.1 by void1x2x11'}
    url = f"https://www.reddit.com/r/{subreddit}/about/.json?raw_json=1"
    response = requests.get(url, headers=headers)

    subscribers = int(response.json()['data']['subscribers']) \
        if response.status_code == 200 else 0

    return subscribers
