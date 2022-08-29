{
  "source": {
    "name": "The DFIR Report",
    "profile_name": "dfirreport",
    "address": "https://thedfirreport.com/",
    "image_url": "https://pbs.twimg.com/profile_images/1247257789660934144/2AaKCNiy_400x400.jpg",
    "retrival_method": "scraping",
    "news_path": "https://thedfirreport.com/",
    "scraping_targets": {
	  "container_list": "div.posts-holder",
      "link_containers": "h2.entry-title",
	  "links": "a[href]"
    }
  },
  "scraping": {
    "type": "JS:remove_titles",
	"meta" : {
		"author" : "meta[property='og:site_name']",
		"publish_date" : "meta[property='article:published_time']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div.entry-content",
      "remove": "div.sharedaddy;div.jp-relatedposts;noscript"
    }
  }
}

