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
      "title": "meta[property='og:title']",
      "description": "meta[property='og:description']",
      "image_url": "meta[property='og:image']"
    },
    "content": {
      "container": "article.Content_content__RAlBs",
      "remove": [
        "div.ad"
      ]
    }
  }
}
