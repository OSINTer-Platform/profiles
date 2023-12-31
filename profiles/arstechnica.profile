{
  "source": {
    "name": "Ars Technica",
    "profile_name": "arstechnica",
    "address": "https://arstechnica.com/",
    "image_url": "https://logos-download.com/wp-content/uploads/2021/02/Ars_Technica_Logo.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://arstechnica.com/information-technology/"
    ],
    "scraping_targets": {
      "container_list": "main#main > section.with-xrail:nth-child(2) > div > ol",
      "link_containers": "li.tease.article",
      "links": "a:first-child"
    }
  },
  "scraping": {
    "js_injections": [
      "scroll_down"
    ],
    "meta": {
      "author": "a[rel=author] > span[itemprop=name]",
      "publish_date": {
        "element": "time.date",
        "content_field": "datetime"
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
      "container": "div.article-content[itemprop='articleBody']",
      "remove": [
        "div.xrail",
        "header.article-header",
        "figure.intro-image",
        "aside",
        "div#article-footer-wrap",
        "div#social-footer",
        "section.article-author",
        "nav.page-numbers",
        "div.story-sidebar",
        "a.enlarge-link",
        "section.promoted-comments",
        "div#mc_embed_signup",
        "div.superscroll-pager",
        "div.lSAction",
        "ul.lSPager.lSGallery"
      ]
    }
  }
}
