{
  "source": {
    "name": "Ars Technica",
    "profile_name": "arstechnica",
    "address": "https://arstechnica.com/",
    "image_url": "https://logos-download.com/wp-content/uploads/2021/02/Ars_Technica_Logo.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://arstechnica.com/security/"
    ],
    "scraping_targets": {
      "container_list": "main#main > div:nth-child(2) > div:has(article[id^='card'])",
      "link_containers": "article[id^='card']",
      "links": "h2 a[href]"
    }
  },
  "scraping": {
    "js_injections": [
      "scroll_down"
    ],
    "meta": {
      "author": "",
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
      "container": "main#main > article",
      "remove": [
        "header",
        ".ad-wrapper",
        ".author-mini-bio",
        ".story-tools",
        ".text-settings-dropdown-story",
        ".caption-credit",
        ".ars-interlude-container"
      ]
    }
  }
}
