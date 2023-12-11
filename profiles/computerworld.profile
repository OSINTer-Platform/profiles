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
      "container_list": "div.main-col",
      "link_containers": "div.river-well.article",
      "links": "h3 > a[href]"
    }
  },
  "scraping": {
    "meta": {
      "author": {
        "element": "meta[name=author]",
        "content_field": "content"
      },
      "publish_date": {
        "element": "meta[name='DC.date.issued']",
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
      "container": "div#drr-container",
      "remove": [
        "div.end-note",
        "aside.native-promo",
        "div.brVideoContainer",
        "div.fakesidebar",
        "aside.fakesidebar",
        "aside.nativo-promo",
        "div.tease-promo",
        "figcaption",
        "small.credit",
        ".ad",
        "div.wrapAd",
        "div.lb-main"
      ]
    }
  }
}
