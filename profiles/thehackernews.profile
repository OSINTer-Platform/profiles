{
  "source": {
    "name": "The Hacker News",
    "profile_name": "thehackernews",
    "address": "https://thehackernews.com/",
    "image_url": "https://thehackernews.com/images/-AaptImXE5Y4/WzjvqBS8HtI/AAAAAAAAxSs/BcCIwpWJszILkuEbDfKZhxQJwOAD7qV6ACLcBGAs/s728-e100/the-hacker-news.jpg",
    "retrival_method": "scraping",
    "news_path": "https://thehackernews.com/",
	"scraping_targets" : {
		"container_list" : "div#Blog1",
		"link_containers" : "div.body-post",
		"links" : "a[href]"
	}
  },
  "scraping": {
    "type": "JS:remove_titles;JS:move_images_outside_table;JS:scroll_down",
	"meta" : {
		"author" : "div[itemprop=author] > meta",
		"publish_date" : "meta[itemprop=datePublished]",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div#articlebody",
      "remove": ".separator:first-child;div.ad_two;div.note-b;div.ebook-image;div.ebook-details;div.check_two;div.seperator;style"
    }
  }
}

