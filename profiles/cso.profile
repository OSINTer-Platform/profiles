{
  "source": {
    "name": "CSO",
    "profile_name": "cso",
    "address": "https://www.csoonline.com/",
    "image_url": "https://allvectorlogo.com/img/2016/06/cso-logo.png",
    "retrival_method": "scraping",
    "news_path": "https://www.csoonline.com/news-analysis/",
    "scraping_targets": {
      "container_list": "div.main-col",
      "link_containers": "div.river-well.article",
      "links": "h3 > a[href]"
    }
  },
  "scraping": {
    "type": "no-action",
	"meta" : {
		"author" : "meta[name=author]",
		"publish_date" : "meta[name='DC.date.issued']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div[itemprop=articleBody]",
      "remove": "aside;div.brVideoContainer;div#sponsoredfakesidebardiv;div.excerpt-text;aside.fakesidebar;div.end-note;div.lb-main;script"
    }
  }
}

