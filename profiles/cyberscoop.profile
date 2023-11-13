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
      "publish_date": "meta[property='article:published_time']",
      "title": "meta[property='og:title']",
      "description": "meta[property='og:description']",
      "image_url": "meta[property='og:image']"
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
