{
  "source": {
    "name": "Bleeping Computer",
    "profile_name": "bleepingcomputer",
    "address": "https://www.bleepingcomputer.com/",
    "image_url": "https://www.bleepstatic.com/logo/bleepingcomputer-logo.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.bleepingcomputer.com/"
    ],
    "scraping_targets": {
      "container_list": "ul#bc-home-news-main-wrap",
      "link_containers": "li",
      "links": "h4 > a[href]"
    }
  },
  "scraping": {
    "js_injections": [
      "scroll_down"
    ],
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
      "container": "div.articleBody",
      "remove": [
        "cnx.cnx-main-container",
        ".cnx-in-desktop",
        ".cnx-ps",
        ".cnx-main-container-flex",
        "div.cz-related-article-wrapp",
        "p:first-child > img",
        "div:first-child > figure > img"
      ]
    }
  }
}
