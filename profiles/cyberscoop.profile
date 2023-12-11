{
  "source": {
    "name": "CyberScoop",
    "profile_name": "cyberscoop",
    "address": "https://www.cyberscoop.com/",
    "image_url": "https://s3.amazonaws.com/sng-global-web-assets/logo/Favicon_CS.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.cyberscoop.com/news/threats/"
    ],
    "scraping_targets": {
      "container_list": "div#archive-post-items",
      "link_containers": "article.post-item:not(.post-item--sponsored):not(:has(> header > h3 > a > svg.icon--podcast))",
      "links": "a.post-item__title-link"
    }
  },
  "scraping": {
    "meta": {
      "author": "span.single-article__author-names",
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
      "container": "div.single-article__content-inner",
      "remove": [
        "div.ad",
        "footer.single-article__footer"
      ]
    }
  }
}
