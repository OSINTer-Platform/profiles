{
  "source": {
    "name": "Cyber Security News",
    "profile_name": "cybersecuritynews",
    "address": "https://cybersecuritynews.com/",
    "image_url": "https://1.bp.blogspot.com/-vp43nx-312U/YHSCwgCvPeI/AAAAAAAAMec/Pw0rVItjYWUao52NVnvZ-4FvuUIFaycwACLcBGAsYHQ/s16000/Cyber-Security-News-2.png",
    "retrieval_method": "rss",
    "news_paths": [
      "https://cybersecuritynews.com/feed/"
    ],
    "scraping_targets": {
      "container_list": "",
      "link_containers": "",
      "links": ""
    }
  },
  "scraping": {
    "meta": {
      "author": "meta[itemprop=name]",
      "publish_date": "meta[property='article:published_time']",
      "title": "meta[property='og:title']",
      "description": "meta[property='og:description']",
      "image_url": "meta[property='og:image']"
    },
    "content": {
      "container": "div.td-post-content",
      "remove": [
        "div.td-post-featured-image",
        "p.has-background:last-child",
        "div.td-a-rec"
      ]
    }
  }
}
