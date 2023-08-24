{
  "source": {
    "name": "CyberScoop",
    "profile_name": "cyberscoop",
    "address": "https://www.cyberscoop.com/",
    "image_url": "https://s3.amazonaws.com/sng-global-web-assets/logo/Favicon_CS.png",
    "retrival_method": "scraping",
    "news_path": "https://www.cyberscoop.com/news/threats/",
    "scraping_targets": {
      "container_list": "div#archive-post-items",
      "link_containers": "article.post-item",
      "links": "a.post-item__title-link"
    }
  },
  "scraping": {
    "type": "no-action",
    "meta": {
      "author": "span.single-article__author-names",
      "publish_date": "meta[property='article:published_time']",
      "title": "meta[property='og:title']",
      "description": "meta[property='og:description']",
      "image_url": "meta[property='og:image']"
    },
    "content": {
      "container": "div.single-article__content-inner",
      "remove": "div.ad;footer.single-article__footer"
    }
  }
}
