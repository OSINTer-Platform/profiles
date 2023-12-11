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
      "author": {
        "element": "meta[itemprop=name]",
        "content_field": "content"
      },
      "publish_date": {
        "element": "meta[property='article:published_time']",
        "content_field": "content"
      },
      "title": {
        "element": "meta[property='og:title']",
        "content_field": "content"
      },
      "description": {
        "element": "meta[property='og:description']",
        "content_field": "content"
      },
      "image_url": {
        "element": "meta[property='og:image']",
        "content_field": "content"
      }
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
