{
  "source": {
    "name": "Security Affairs",
    "profile_name": "securityaffairs",
    "address": "https://securityaffairs.com/",
    "image_url": "https://securityaffairs.com/wp-content/uploads/2023/08/logo.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://securityaffairs.com/"
    ],
    "scraping_targets": {
      "container_list": "div.latest-news-block",
      "link_containers": "div.news-card",
      "links": "h5 > a[href]"
    }
  },
  "scraping": {
    "meta": {
      "author": "meta[name='author']",
      "publish_date": "meta[property='article:published_time']",
      "title": "meta[property='og:title']",
      "description": "meta[property='og:description']",
      "image_url": "meta[property='og:image']"
    },
    "content": {
      "container": "div.article-details-block",
      "remove": [
        "div.common-heading",
        "div.post-time",
        "img.img-fluid:first-of-type",
        "h2.wp-block-heading:first-of-type",
        "div.social-media",
        "div.cta-tags",
        "div.adsbyvli"
      ]
    }
  }
}
