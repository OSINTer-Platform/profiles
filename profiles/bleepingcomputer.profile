{
  "source": {
    "name": "Bleeping Computer",
    "profile_name": "bleepingcomputer",
    "address": "https://www.bleepingcomputer.com/",
    "image_url": "https://www.bleepstatic.com/logo/bleepingcomputer-logo.png",
    "retrival_method": "rss",
    "news_path": "https://www.bleepingcomputer.com/feed/"
  },
  "scraping": {
    "type": "JS:scroll_down",
	"meta" : {
		"author" : "",
		"publish_date" : "",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div.articleBody",
      "remove": "cnx.cnx-main-container;.cnx-in-desktop;.cnx-ps;.cnx-main-container-flex;div.cz-related-article-wrapp;p:first-child > img"
    }
  }
}
