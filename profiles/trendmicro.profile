{
  "source": {
    "name": "Trend Micro",
    "profile_name": "trendmicro",
    "address": "https://www.trendmicro.com/",
    "image_url": "https://www.pcworld.com/wp-content/uploads/2021/09/trend-micro-logo_crop-100761715-orig.jpg?quality=50&strip=all&w=700",
    "retrival_method": "scraping",
    "news_path": "https://www.trendmicro.com/en_us/research.html?category=trend-micro-research:article-type/latest-news&category=trend-micro-research:article-type/research",
    "scraping_targets": {
      "container_list": "section.filter-list > div.grid-container",
      "link_containers": "article.grid-item",
      "links": "a[href]"
    }
  },
  "scraping": {
    "type": "JS:fix_relative_links",
    "meta": {
      "author": "p.article-authors__list-items__name",
      "publish_date": "meta[property='article:published_time']",
      "title": "meta[property='og:title']",
      "description": "p.article-details__description",
      "image_url": "meta[property='og:image']"
    },
    "content": {
      "container": "main.main--content",
      "remove": "section.tag--list;div.jwPlayer"
    }
  }
}
