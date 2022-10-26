{
  "source": {
    "name": "ZDNet",
    "profile_name": "zdnet",
    "address": "https://www.zdnet.com/",
    "image_url": "https://www.zdnet.com/a/fly/bundles/zdnetcore/images/logos/zdnet-logo-large.png",
    "retrival_method": "scraping",
    "news_path": "https://www.zdnet.com/topic/security/",
    "scraping_targets": {
	  "container_list": "div.river",
      "link_containers": "article.item",
	  "links": "a[href]"
    }
  },
  "scraping": {
    "type": "no-action",
	"meta" : {
		"author" : "meta[name='author']",
		"publish_date" : "",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div.c-articleContent",
      "remove": "div.c-shortcodePinbox-textList;div.c-shortcodePinbox;div > a.c-shortcodeCommercePromo;figure.c-shortcodeImage:nth-child(1)"
    }
  }
}
