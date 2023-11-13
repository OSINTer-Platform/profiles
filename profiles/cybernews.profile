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
      "publish_date": "meta[property='article:published_time']",
      "title": "h1.heading",
      "description": "meta[name='description']",
      "image_url": "meta[property='og:image']"
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
