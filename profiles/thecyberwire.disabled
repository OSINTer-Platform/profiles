{
  "source": {
    "name": "The Cyber Wire",
    "profile_name": "thecyberwire",
    "address": "https://thecyberwire.com/",
    "image_url": "https://pbs.twimg.com/profile_images/1712430694264197120/an66Odwi_400x400.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://thecyberwire.com/stories"
    ],
    "scraping_targets": {
      "container_list": "div.card-list-container",
      "link_containers": "div.card",
      "links": "a[href]"
    }
  },
  "scraping": {
    "js_injections": [],
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
      "container": "h1.title ~ div.content-item-text > div.description",
      "remove": []
    }
  }
}
