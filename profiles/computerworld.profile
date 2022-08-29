{
  "source": {
    "name": "Computerworld",
    "profile_name": "computerworld",
    "address": "https://www.computerworld.com/",
	"image_url": "https://idge.staticworld.net/ctw/computerworld-logo300x300.png",
    "retrival_method": "scraping",
    "news_path": "https://www.computerworld.com/nl/category/security/",
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
	  "container": "div#drr-container",
      "remove": "div.end-note;aside.native-promo;div.brVideoContainer;div.fakesidebar;aside.fakesidebar;aside.nativo-promo;div.tease-promo;script;figcaption;small.credit;.ad;div.wrapAd;div.lb-main"
    }
  }
}

