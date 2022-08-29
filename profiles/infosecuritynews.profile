{
  "source": {
    "name": "Infosecurity News",
    "profile_name": "infosecuritynews",
    "address": "https://www.infosecurity-magazine.com/",
    "image_url": "https://di9mr54a05a64.cloudfront.net/api-infosecurityeurope.expoplatform.com/image/500x500xc-f/MTYyMzg4MDM3MzYwY2E3MmI1YTkyYWI=.png",
    "retrival_method": "scraping",
    "news_path": "https://www.infosecurity-magazine.com/news/",
    "scraping_targets": {
      "container_list": "div#webpages-list",
      "link_containers": "div.webpage-item",
      "links": "a[href]"
    }
  },
  "scraping": {
    "type": "no-action",
	"meta" : {
		"author" : "meta[name=author]",
		"publish_date" : "meta[property='article:published_time']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div#layout-",
      "remove": ""
    }
  }
}

