{
  "source": {
    "name": "CyberNews",
    "profile_name": "cybernews",
    "address": "https://cybernews.com/",
    "image_url": "https://media.cybernews.com/2020/09/cybernews-logo.png",
    "retrival_method": "scraping",
    "news_path": "https://cybernews.com/news/",
    "scraping_targets": {
      "container_list": "section > div > div.cells > div.cells__item",
      "link_containers": "div.space:not(:first-child)",
      "links": "a.button"
    }
  },
  "scraping": {
    "type": "JS:scroll_down",
	"meta" : {
		"author" : "",
		"publish_date" : "meta[property='article:published_time']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div.content",
      "remove": "h2#more-from-cybernews ~ p;h2#more-from-cybernews;div.content > p:empty;div.content > p:first-of-type > strong > em"
    }
  }
}

