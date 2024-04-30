{
  "source": {
    "name": "Security Magazine",
    "profile_name": "securitymagazine",
    "address": "https://www.securitymagazine.com",
    "image_url": "https://pbs.twimg.com/profile_images/697148037030940673/dNvRhwdv_400x400.jpg",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.securitymagazine.com/topics/2236-cybersecurity-news"
    ],
    "scraping_targets": {
      "container_list": "div.articles-list__row",
      "link_containers": "article",
      "links": "h2 > a[href]"
    }
  },
  "scraping": {
    "js_injections": [],
    "meta": {
      "author": "div.author > a",
      "publish_date": "",
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
      "container": "div.article-body",
      "remove": []
    }
  }
}
