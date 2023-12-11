{
  "source": {
    "name": "CSO",
    "profile_name": "cso",
    "address": "https://www.csoonline.com/",
    "image_url": "https://allvectorlogo.com/img/2016/06/cso-logo.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.csoonline.com/news/"
    ],
    "scraping_targets": {
      "container_list": "section.featured-content ",
      "link_containers": "a[href]",
      "links": ""
    }
  },
  "scraping": {
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
      "container": "div.article-column__content",
      "remove": [
        "div.social-share-sticky-menu",
        "div.media-with-label:nth-child(2)",
        "div.jwPlayer--floatingContainer"
      ]
    }
  }
}
