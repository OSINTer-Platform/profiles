{
  "source": {
    "name": "DarkReading",
    "profile_name": "darkreading",
    "address": "https://www.darkreading.com/",
    "image_url": "https://beta.darkreading.com/images/og-image.jpg",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.darkreading.com/threat-intelligence/"
    ],
    "scraping_targets": {
      "container_list": "div.infinite-scroll-component",
      "link_containers": "div.topic-content-article",
      "links": "a.article-edge-wrap--link[href]"
    }
  },
  "scraping": {
    "meta": {
      "author": "",
      "publish_date": "meta[property='article:published_time']",
      "title": "meta[property='og:title']",
      "description": "meta[property='og:description']",
      "image_url": "meta[property='og:image']"
    },
    "content": {
      "container": "div.article-content",
      "remove": []
    }
  }
}
