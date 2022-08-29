{
  "source": {
    "name": "The Record",
    "profile_name": "therecord",
    "address": "https://therecord.media/",
    "image_url": "https://perimeterinstitute.ca/sites/default/files/styles/news_card/public/2020-11/The_Record_Logo_card.jpg?itok=RI0RajAg",
    "retrival_method": "scraping",
    "news_path": "https://therecord.media/all-news/",
    "scraping_targets": {
	  "container_list": "div.news",
	  "link_containers": "div.news__new--featured",
	  "links": "a.news__thumb[href]"
    }
  },
  "scraping": {
    "type": "JS:fix_the_record_links",
	"meta" : {
		"author" : "",
		"publish_date" : "meta[property='article:published_time']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div.col-right",
      "remove": "div.share-icons-bottom;div.tags;div.bottom-author;h1.single-page-title"
    }
  }
}

