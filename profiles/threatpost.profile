{
  "source": {
    "name": "ThreatPost",
    "profile_name": "threatpost",
    "address": "https://threatpost.com/",
    "image_url": "https://media.threatpost.com/wp-content/uploads/sites/103/2018/04/12084846/tp_twitter.png",
    "retrieval_method": "rss",
    "news_paths": [
      "https://threatpost.com/feed"
    ],
    "scraping_targets": {
      "container_list": "",
      "link_containers": "",
      "links": ""
    }
  },
  "scraping": {
    "meta": {
      "author": "",
      "publish_date": "",
      "title": "meta[property='og:title']",
      "description": "meta[property='og:description']",
      "image_url": "meta[property='og:image']"
    },
    "content": {
      "container": ".c-article__content",
      "remove": [
        "img.wp-image-141989",
        "footer",
        "img[alt='Infosec Insiders Newsletter']"
      ]
    }
  }
}
