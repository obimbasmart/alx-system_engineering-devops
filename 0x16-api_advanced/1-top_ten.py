#!/usr/bin/python3
"""queries the Reddit API and prints the titles of
the first 10 hot posts listed for a given subreddi"""

import json
import requests
from pprint import pprint as pp


def top_ten(subreddit):
    """return top 10 post on subreddit"""

    headers = {'User-Agent': 'my-app/0.0.1 by void1x2x11'}
    url = f"https://www.reddit.com/r/{subreddit}/hot/.json?limit=9"
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code != 200:
        return (print(None))

    top_ten = response.json().get('data', {}).get("children", [])
    for post in top_ten:
        print(post.get('data').get('title'))
