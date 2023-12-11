{
  "source": {
    "name": "DataBreaches",
    "profile_name": "databreaches",
    "address": "https://www.databreaches.net/",
    "image_url": "https://www.databreaches.net/wp-content/uploads/cropped-databreach2-192x192.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.databreaches.net/"
    ],
    "scraping_targets": {
      "container_list": "main#main",
      "link_containers": "article.posts-entry",
      "links": "h2 > a[href]"
    }
  },
  "scraping": {
    "meta": {
      "author": "span.byline > span.author",
      "publish_date": {
        "element": "span.posted-on time",
        "content_field": "datetime"
      },
      "title": "title",
      "description": {
        "element": "meta[name='description']",
        "content_field": "content"
      },
      "image_url": {
        "element": "div.site-branding img",
        "content_field": "src"
      }
    },
    "content": {
      "container": "div.entry-content",
      "remove": [
        "div.crp_related",
        "div.wp-video"
      ]
    }
  }
}
