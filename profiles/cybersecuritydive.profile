{
  "source": {
    "name": "CyberSecurity Dive",
    "profile_name": "cybersecuritydive",
    "address": "https://www.cybersecuritydive.com/",
    "image_url": "https://pbs.twimg.com/profile_images/1306956880368070660/V0CeoY3v_400x400.jpg",
    "retrival_method": "scraping",
    "news_path": "https://www.cybersecuritydive.com/",
    "scraping_targets": {
      "container_list": "section.dash-feed",
      "link_containers": "h3[id^=feed-item-title]",
      "links": "a[href]"
    }
  },
  "scraping": {
    "type": "no-scraping",
	"meta" : {
		"author" : "meta[name='sailthru.author']",
		"publish_date" : "meta[name='sailthru.date']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div.article-body",
      "remove": "div.hybrid-ad-wrapper;[class^=text-to-speech];div.inline-signup;section#desktop-carousel;script;style"
    }
  }
}

