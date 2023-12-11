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
      "author": {
        "element": "meta[name='author']",
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
