{
  "source": {
    "name": "Latest Hacking News",
    "profile_name": "latesthackingnews",
    "address": "https://latesthackingnews.com/",
    "image_url": "https://latesthackingnews.com/wp-content/uploads/2021/01/LHN.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://latesthackingnews.com/category/cyber-security-news/"
    ],
    "scraping_targets": {
      "container_list": "ul.penci-wrapper-data",
      "link_containers": "h2.penci-entry-title",
      "links": "a[href]"
    }
  },
  "scraping": {
    "js_injections": [
      "scroll_down",
      "fix_relative_links"
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
      "container": "div#penci-post-entry-inner",
      "remove": [
        "div.post-tags",
        "aside"
      ]
    }
  }
}
