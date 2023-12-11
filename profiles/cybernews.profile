{
  "source": {
    "name": "CyberNews",
    "profile_name": "cybernews",
    "address": "https://cybernews.com/",
    "image_url": "https://media.cybernews.com/2020/09/cybernews-logo.png",
    "retrieval_method": "dynamic",
    "news_paths": [
      "https://cybernews.com/news/",
      "https://cybernews.com/cyber-war/",
      "https://cybernews.com/security/",
      "https://cybernews.com/crypto/"
    ],
    "scraping_targets": {
      "container_list": "div.cells__item.cells__item_width",
      "link_containers": "div > div > div.cells__item_width_fill",
      "links": "a.button"
    }
  },
  "scraping": {
    "js_injections": [
      "scroll_down"
    ],
    "meta": {
      "author": "a.link.article-info__link",
      "publish_date": {
        "element": "meta[property='article:published_time']",
        "content_field": "content"
      },
      "title": "h1.heading",
      "description": {
        "element": "meta[name='description']",
        "content_field": "content"
      },
      "image_url": {
        "element": "meta[property='og:image']",
        "content_field": "content"
      }
    },
    "content": {
      "container": "div.content",
      "remove": [
        ".adsbygoogle",
        "h2#more-from-cybernews ~ p",
        "h2#more-from-cybernews",
        "div.content > p:empty",
        ".weekly-deal"
      ]
    }
  }
}
