{
  "source": {
    "name": "The Cyber Express",
    "profile_name": "thecyberexpress",
    "address": "https://thecyberexpress.com/",
    "image_url": "https://thecyberexpress.com/wp-content/uploads/2023/05/Logo-cyble-CyberExpress-black-2000x2000-1.png",
    "retrieval_method": "scraping",
    "news_paths": [
      "https://thecyberexpress.com/"
    ],
    "scraping_targets": {
      "container_list": "div.jeg_posts.jeg_block_container",
      "link_containers": "article.jeg_post",
      "links": "a[href]"
    }
  },
  "scraping": {
    "meta": {
      "author": "div.jeg_meta_author > a",
      "publish_date": {
        "element": "meta[property='article:modified_time']",
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
      "container": "div.content-inner",
      "remove": [
        "div.jnews_inline_related_post_wrapper",
        "div.sharedaddy",
        "div#jp-relatedposts",
        "div.jeg_post_tags",
        "div[data-thecy-trackbid]"
      ]
    }
  }
}
