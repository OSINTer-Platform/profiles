{
  "source": {
    "name": "[name of newssite]",
    "profile_name": "[name of this file without extension]",
    "address": "[the root address for the website]",
    "image_url": "[url to icon image]",
    "retrieval_method": "scraping",
    "news_paths": "[url to the front page overview to scrape]",
    "scraping_targets": {
      "container_list": "[selector for container of all news links]",
      "link_containers": "[selector for each container for each news link]",
      "links": "[selector for link (<a>) element]"
    }
  },
  "scraping": {
    "js_injections": [
      "[name of scripts from js_injections folder without .js extension]"
    ],
    "meta": {
      "author": "",
      "publish_date": "",
      "title": "meta[property='og:title']",
      "description": "meta[property='og:description']",
      "image_url": "meta[property='og:image']"
    },
    "content": {
      "container": "[selector for container of article content]",
      "remove": [
        "[selector for element in article content container to remove]"
      ]
    }
  }
}
