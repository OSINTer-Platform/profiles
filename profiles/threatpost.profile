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
      "container": ".c-article__content",
      "remove": [
        "img.wp-image-141989",
        "footer",
        "img[alt='Infosec Insiders Newsletter']"
      ]
    }
  }
}
