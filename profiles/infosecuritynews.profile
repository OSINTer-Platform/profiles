{
  "source": {
    "name": "Infosecurity News",
    "profile_name": "infosecuritynews",
    "address": "https://www.infosecurity-magazine.com/",
    "image_url": "https://di9mr54a05a64.cloudfront.net/api-infosecurityeurope.expoplatform.com/image/500x500xc-f/MTYyMzg4MDM3MzYwY2E3MmI1YTkyYWI=.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.infosecurity-magazine.com/news/"
    ],
    "scraping_targets": {
      "container_list": "ol.webpages-list",
      "link_containers": "li.webpage-item",
      "links": "a[href]"
    }
  },
  "scraping": {
    "meta": {
      "author": {
        "element": "meta[name=author]",
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
      "container": "div.page-content",
      "remove": []
    }
  }
}
