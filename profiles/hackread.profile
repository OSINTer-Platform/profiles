{
  "source": {
    "name": "HACKRead",
    "profile_name": "hackread",
    "address": "https://www.hackread.com/",
    "image_url": "https://www.hackread.com/wp-content/uploads/2023/08/Hackread-logo.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.hackread.com/"
    ],
    "scraping_targets": {
      "container_list": "div.cs-posts-area__main",
      "link_containers": "article",
      "links": "a[href]"
    }
  },
  "scraping": {
    "meta": {
      "author": "div.cs-entry__header-info div.cs-meta-author > a > span.cs-author",
      "publish_date": "meta[property='article:published_time']",
      "title": "meta[property='og:title']",
      "description": "p.is-style-cnvs-paragraph-callout",
      "image_url": "meta[property='og:image']"
    },
    "content": {
      "container": "div.entry-content",
      "remove": [
        "p.is-style-cnvs-paragraph-callout",
        "h3#related-articles ~ ol",
        "h3#related-articles",
        ".adsbygoogle"
      ]
    }
  }
}
