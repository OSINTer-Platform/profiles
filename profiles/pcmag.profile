{
  "source": {
    "name": "PCMag",
    "profile_name": "pcmag",
    "address": "https://www.pcmag.com/",
    "image_url": "https://www.pcmag.com/images/pcmag.svg",
    "retrieval_method": "dynamic",
    "news_paths": [
      "https://www.pcmag.com/news/categories/security"
    ],
    "scraping_targets": {
      "container_list": "div#content-river ",
      "link_containers": "div[data-id]",
      "links": "h2 > a[href]"
    }
  },
  "scraping": {
    "js_injections": [
      "scroll_down"
    ],
    "meta": {
      "author": "div#author-byline span>div>span",
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
      "container": "article > div#id_text",
      "remove": [
        "div[data-parent-group='related-stories']",
        "div[x-init]",
        "div#comments",
        "div.article_ads"
      ]
    }
  }
}
