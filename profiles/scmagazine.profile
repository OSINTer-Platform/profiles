{
  "source": {
    "name": "SC Magazine",
    "profile_name": "scmagazine",
    "address": "https://www.scmagazine.com/",
    "image_url": "https://www.scmagazine.com/images/fallback-image.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.scmagazine.com/"
    ],
    "scraping_targets": {
      "container_list": "div.teaser-list-wrapper",
      "link_containers": "article",
      "links": "a[href]"
    }
  },
  "scraping": {
    "js_injections": [],
    "meta": {
      "author": "span[itemprop=author]",
      "publish_date": "span > time",
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
      "container": "article[class^=\"Content_content\"]",
      "remove": [
        "div.ad"
      ]
    }
  }
}
