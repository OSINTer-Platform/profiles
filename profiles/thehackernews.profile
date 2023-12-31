{
  "source": {
    "name": "The Hacker News",
    "profile_name": "thehackernews",
    "address": "https://thehackernews.com/",
    "image_url": "https://thehackernews.com/images/-AaptImXE5Y4/WzjvqBS8HtI/AAAAAAAAxSs/BcCIwpWJszILkuEbDfKZhxQJwOAD7qV6ACLcBGAs/s728-e100/the-hacker-news.jpg",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://thehackernews.com/"
    ],
    "scraping_targets": {
      "container_list": "div#Blog1",
      "link_containers": "div.body-post",
      "links": "a[href]"
    }
  },
  "scraping": {
    "js_injections": [
      "remove_titles",
      "move_images_outside_table",
      "scroll_down"
    ],
    "meta": {
      "author": "div[itemprop=author] > meta",
      "publish_date": {
        "element": "meta[itemprop=datePublished]",
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
      "container": "div#articlebody",
      "remove": [
        ".separator:first-child",
        "div.ad_two",
        "div.note-b",
        "div.ebook-image",
        "div.ebook-details",
        "div.check_two",
        "div.seperator"
      ]
    }
  }
}
