{
  "source": {
    "name": "SecurityWeek",
    "profile_name": "securityweek",
    "address": "https://www.securityweek.com/",
    "image_url": "https://mms.businesswire.com/media/20210112005589/en/851776/23/SecurityWeek-Logo.jpg",
    "retrival_method": "scraping",
    "news_path": "https://www.securityweek.com/",
    "scraping_targets": {
      "container_list": "div.sw-home-hero > div.wp-block-column:first-child",
      "link_containers": "section.zoxrel",
      "links": "a[href]"
    }
  },
  "scraping": {
    "type": "JS:fix_relative_links",
    "meta": {
      "author": "meta[name=author]",
      "publish_date": "meta[property='article:published_time']",
      "title": "meta[property='og:title']",
      "description": "meta[property='og:description']",
      "image_url": "meta[property='og:image']"
    },
    "content": {
      "container": "div.zox-post-body > div > div",
      "remove": "div.zox-post-ad-wrap;figure.wp-block-image:first-child"
    }
  }
}
