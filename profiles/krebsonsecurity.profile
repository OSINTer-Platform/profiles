{
  "source": {
    "name": "Krebs on Security",
    "profile_name": "krebsonsecurity",
    "address": "https://krebsonsecurity.com/",
    "image_url": "https://images.crunchbase.com/image/upload/kgziza2jzrm4jzrevkyk",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://krebsonsecurity.com/"
    ],
    "scraping_targets": {
      "container_list": "div#content",
      "link_containers": "article",
      "links": "h2 > a[href]"
    }
  },
  "scraping": {
    "js_injections": [],
    "meta": {
      "author": "",
      "publish_date": "span.date",
      "title": "meta[name='twitter:title']",
      "description": "meta[name='twitter:description']",
      "image_url": "meta[name='twitter:image']"
    },
    "content": {
      "container": "div.entry-content",
      "remove": []
    }
  }
}
