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
      "publish_date": "meta[property='article:published_time']",
      "title": "meta[property='og:title']",
      "description": "meta[property='og:description']",
      "image_url": "meta[property='og:image']"
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
