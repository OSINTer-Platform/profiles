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
      "container_list": "div#article > div > div.content-listing-articles__container",
      "link_containers": "div.content-listing-articles__row ",
      "links": "a[href]"
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
      "container": "div#remove_no_follow",
      "remove": [
        "div.social-share-sticky-menu",
        "div.media-with-label:nth-child(2)",
        "div.jwPlayer--floatingContainer",
        ".advert",
        ".miso-smart-answers-discovery"
      ]
    }
  }
}
