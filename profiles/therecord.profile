{
  "source": {
    "name": "The Record",
    "profile_name": "therecord",
    "address": "https://therecord.media/",
    "image_url": "https://perimeterinstitute.ca/sites/default/files/styles/news_card/public/2020-11/The_Record_Logo_card.jpg?itok=RI0RajAg",
    "retrieval_method": "dynamic",
    "news_paths": [
      "https://therecord.media/all-news/"
    ],
    "scraping_targets": {
      "container_list": "div.article-listing__list",
      "link_containers": "a.article-tile",
      "links": ""
    }
  },
  "scraping": {
    "meta": {
      "author": "a.article__editor",
      "publish_date": "span.article__date",
      "title": "meta[property='og:title']",
      "description": "meta[property='og:description']",
      "image_url": "meta[property='og:image']"
    },
    "content": {
      "container": "div.article__content",
      "remove": [
        "div.social-share-icons",
        "div.article__tags",
        "div.editor",
        "h1:first-child"
      ]
    }
  }
}
