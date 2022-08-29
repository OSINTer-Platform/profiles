{
  "source": {
    "name": "SecurityWeek",
    "profile_name": "securityweek",
    "address": "https://www.securityweek.com/",
    "image_url": "https://mms.businesswire.com/media/20210112005589/en/851776/23/SecurityWeek-Logo.jpg",
    "retrival_method": "scraping",
    "news_path": "https://feeds.feedburner.com/securityweek",
    "scraping_targets": {
	  "container_list": "div#bodyblock > ul",
      "link_containers": "li.regularitem > h4.itemtitle",
	  "links": "a[href]"
    }
  },
  "scraping": {
    "type": "JS:fix_relative_links",
	"meta" : {
		"author" : "div > div.submitted > div > a",
		"publish_date" : "",
		"title" : "h2.page-title",
		"description" : "meta[name=description]",
		"image_url" : ""
	},
    "content": {
      "container": "div.node > div.content",
      "remove": "p:first-child;p > strong > span;div.ad_in_content;div.sharethis;div.author_content;div.sponsored_links_box;div.author-terms;div.disqus_thread;noscript"
    }
  }
}

