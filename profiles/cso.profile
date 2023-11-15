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
      "title": "meta[property='og:title']",
      "description": "meta[property='og:description']",
      "image_url": "meta[property='og:image']"
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
