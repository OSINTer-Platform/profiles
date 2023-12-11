{
  "source": {
    "name": "The DFIR Report",
    "profile_name": "dfirreport",
    "address": "https://thedfirreport.com/",
    "image_url": "https://pbs.twimg.com/profile_images/1247257789660934144/2AaKCNiy_400x400.jpg",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://thedfirreport.com/"
    ],
    "scraping_targets": {
      "container_list": "div.posts-holder",
      "link_containers": "h2.entry-title",
      "links": "a[href]"
    }
  },
  "scraping": {
    "js_injections": [
      "remove_titles"
    ],
    "meta": {
      "author": {
        "element": "meta[property='og:site_name']",
        "content_field": "content"
      },
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
      "container": "div.entry-content",
      "remove": [
        "div.sharedaddy",
        "div.jp-relatedposts",
        "noscript"
      ]
    }
  }
}
