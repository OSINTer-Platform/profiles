{
  "source": {
    "name": "Trend Micro",
    "profile_name": "trendmicro",
    "address": "https://www.trendmicro.com/",
    "image_url": "https://upload.wikimedia.org/wikipedia/commons/d/dc/Trendmicro_logo.jpg",
    "retrival_method": "scraping",
    "news_path": "https://blog.trendmicro.com/category/security/",
	"scraping_targets": {
      "container_list": "div.grid-container",
      "link_containers": "article.grid-item[data-pageid]",
      "links": "a.heading[href]"
    }

  },
  "scraping": {
    "type": "no-action",
	"meta" : {
		"author" : "p.article-authors__list-items__name",
		"publish_date" : "meta[property='article:published_time']",
		"title" : "meta[property='og:title']",
		"description" : "p.article-details__description",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "main.main--content",
      "remove": "section.tag--list;div.jwPlayer"
    }
  }
}

