{
  "source": {
    "name": "ZDNet",
    "profile_name": "zdnet",
    "address": "https://www.zdnet.com/",
    "image_url": "https://www.zdnet.com/a/fly/bundles/zdnetcore/images/logos/zdnet-logo-large.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.zdnet.com/topic/ransomware/"
    ],
    "scraping_targets": {
      "container_list": "div.river",
      "link_containers": "article.item",
      "links": "a[href]"
    }
  },
  "scraping": {
    "meta": {
      "author": {
        "element": "meta[name='author']",
        "content_field": "content"
      },
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
      "container": "div.c-articleContent",
      "remove": [
        "div.c-shortcodePinbox-textList",
        "div.c-shortcodePinbox",
        "div > a.c-shortcodeCommercePromo",
        "figure.c-shortcodeImage:nth-child(1)",
        "div.c-newsletterSignup",
        "div.c-shortcodePinbox-carousel"
      ]
    }
  }
}
