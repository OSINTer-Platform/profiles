{
  "source": {
    "name": "HACKRead",
    "profile_name": "hackread",
    "address": "https://www.hackread.com/",
    "image_url": "https://www.hackread.com/wp-content/uploads/2023/08/Hackread-logo.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.hackread.com/hacking-news/",
      "https://www.hackread.com/latest-cyber-crime/",
      "https://www.hackread.com/security/"
    ],
    "scraping_targets": {
      "container_list": "div.cs-posts-area__main",
      "link_containers": "article",
      "links": "h2.cs-entry__title > a[href]"
    }
  },
  "scraping": {
    "meta": {
      "author": "div.cs-entry__header-info div.cs-meta-author > a > span.cs-author",
      "publish_date": {
        "element": "meta[property='article:published_time']",
        "content_field": "content"
      },
      "title": {
        "element": "meta[property='og:title']",
        "content_field": "content"
      },
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
      "container": "div.entry-content",
      "remove": [
        "p.is-style-cnvs-paragraph-callout",
        "h3#related-articles ~ ol",
        "h3#related-topics~ ol",
        "h3#related-stories ~ ol",
        "h3#related-articles",
        "h3#related-topics",
        "h3#related-stories",
        ".adsbygoogle",
        "div.wp-block-image:first-child > figure"
      ]
    }
  }
}
