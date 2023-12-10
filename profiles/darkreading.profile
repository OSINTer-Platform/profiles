{
  "source": {
    "name": "DarkReading",
    "profile_name": "darkreading",
    "address": "https://www.darkreading.com/",
    "image_url": "https://beta.darkreading.com/images/og-image.jpg",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.darkreading.com/",
      "https://www.darkreading.com/program/dr-global"
    ],
    "scraping_targets": {
      "container_list": "div.LatestFeatured-Content.LatestFeatured-Content_left",
      "link_containers": "div.ListPreview",
      "links": "a.ListPreview-Title[href]"
    }
  },
  "scraping": {
    "js_injections": [
      "scroll_down"
    ],
    "meta": {
      "author": "",
      "publish_date": "",
      "title": "meta[property='og:title']",
      "description": "meta[property='og:description']",
      "image_url": "meta[property='og:image']"
    },
    "content": {
      "container": "div.ContentModule-Wrapper",
      "remove": [
        "div.Ad"
      ]
    }
  }
}
