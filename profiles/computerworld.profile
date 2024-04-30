{
  "source": {
    "name": "Computerworld",
    "profile_name": "computerworld",
    "address": "https://www.computerworld.com/",
    "image_url": "https://idge.staticworld.net/ctw/computerworld-logo300x300.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.computerworld.com/nl/category/security/"
    ],
    "scraping_targets": {
      "container_list": "div.latest-content__content",
      "link_containers": "div.latest-content__content-featured, div.latest-content__card-main, div.latest-content__card-secondary",
      "links": "a[href]"
    }
  },
  "scraping": {
    "meta": {
      "author": "div.author-bio div.author__name a",
      "publish_date": {
        "element": "meta[name=date]",
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
      "container": "div#remove_no_follow",
      "remove": [
        ".advert",
        ".jwPlayer--floatingContainer"
      ]
    }
  }
}
