{
  "source": {
    "name": "SecurityWeek",
    "profile_name": "securityweek",
    "address": "https://www.securityweek.com/",
    "image_url": "https://mms.businesswire.com/media/20210112005589/en/851776/23/SecurityWeek-Logo.jpg",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://www.securityweek.com/"
    ],
    "scraping_targets": {
      "container_list": "div#zox_side_trend_widget-1.sw-style-simple > div.zox-widget-side-trend-wrap",
      "link_containers": "section.zoxrel",
      "links": "a[href]"
    }
  },
  "scraping": {
    "js_injections": [
      "fix_relative_links"
    ],
    "meta": {
      "author": {
        "element": "meta[name=author]",
        "content_field": "content"
      },
      "publish_date": {
        "element": "meta[property='article:published_time']",
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
      "container": "div.zox-post-body",
      "remove": [
        "div.zox-post-ad-wrap",
        "figure.wp-block-image:first-child"
      ]
    }
  }
}
