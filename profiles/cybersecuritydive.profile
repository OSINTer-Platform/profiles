{
  "source": {
    "name": "CyberSecurity Dive",
    "profile_name": "cybersecuritydive",
    "address": "https://www.cybersecuritydive.com/",
    "image_url": "https://pbs.twimg.com/profile_images/1306956880368070660/V0CeoY3v_400x400.jpg",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.cybersecuritydive.com/"
    ],
    "scraping_targets": {
      "container_list": "section.dash-feed",
      "link_containers": "h3[id^=feed-item-title]",
      "links": "a[href]"
    }
  },
  "scraping": {
    "meta": {
      "author": {
        "element": "meta[name='sailthru.author']",
        "content_field": "content"
      },
      "publish_date": {
        "element": "meta[name='sailthru.date']",
        "content_field": "content"
      },
      "title": {
        "element": "meta[property='og:title']",
        "content_field": "content"
      },
      "description": {
        "element": "meta[property='og:description']",
        "content_field": "content"
      },
      "image_url": {
        "element": "meta[property='og:image']",
        "content_field": "content"
      }
    },
    "content": {
      "container": "div.article-body",
      "remove": [
        "div.hybrid-ad-wrapper",
        "[class^=text-to-speech]",
        "div.inline-signup",
        "section#desktop-carousel",
        "section[id$=carousel]"
      ]
    }
  }
}
