# OSINTer profiles

[![OSINTer](https://raw.githubusercontent.com/bertmad3400/OSINTer/master/logo.png)](https://osinter.dk)

## Welcome to OSINTer
This repo is a part of a larger project called
![OSINTer](https://github.com/bertmad3400/OSINTer). For more information on the
project as a whole, you can find OSINTer at
![https://github.com/bertmad3400/OSINTer](https://github.com/bertmad3400/OSINTer).

## What is OSINTprofiles?
OSINTprofiles is responsible for hosting the information for scraping news
sites in a generic and standardized way, to enable OSINTbackend to function as
a generic scraping engine for these sites, and thereby managing the wast
differences in modern websites in a managable way that doesn't involve to much
boilerplate code.

## What are OSINT JS injections?
Before getting to the profiles themselves, we will have to quickly go over the
OSINT JS injections. Where profiles are used to specify where to find certain
informations on newssites, JS injections are Javascript scripts that will run on
the site after it has been loaded in Selenium, but before the source code is
scraped. This allows for possibilities like automatically scrolling down to load
dynamically loaded content, or maybe to push a "Read More" button to reveal the
whole article for scraping.

## How can you create a JS injection?
JS injections are simply vanilla Javascript, and as such you can simply create a
script, give it a ".js" file extension and put it in the js_injection folder
to be able to use it when scraping, but there is hovewer a single caveat. Your
script should start with setting "document.osinterReady" to false, and end with
changing it to true. This way OSINTer will know to wait for the completion of
your script, though keep in mind that this also means you shouldn't create
scripts that take more than at max a few minuttes to run, to prevent scraping
taking too long.

## What is a profile?
OSINTer is a project aiming at building an generic webscraping engine, for
collecting and curating information and articles from a whole range of news
sites by using a couple of rules on how and where to find the relevant
information on these news sites. These rules are internally refered to as
profiles and they are what allows OSINTer to collect large amounts of
information from a wide range of sites with very little knowledge about the
structure of the sites.

Profiles are in short simply data structured in a JSON format specifying where
and what to scrape. These are custom created on a site to site basis, and since
nearly all news sites have the same structure (more or less) on all of their
articles, they're made to describe some generic rules on where to find given
pieces of information on a page, like in what HTML element with what tag the
date is to be found, or what element is encapsulating the text in the articles.

The goal with the profiles is to be as generic as possible, with the most in
common with each other, to prevent a programming hell of having to program in
every possible edge case that could appear in an article, and instead allow the
script to use a few simple rules for scraping the articles that are the same for
all sites. With that said though there are two different types of profiles, for
two different kinds of websites. The first one is for the sites that offer a
reliable RSS feed which conform to standards. This one is the prefered method,
since it's not only the simplest method for gathering the newest articles from a
site, but oftentimes also the most reliable.

Some site hovewer, does not offer a RSS feed, or maybe they, but it doesn't
conform to the standard. Here classic webscraping of the front page is used to
find the 10 newest articles, and while it does not offer the same reliability as
the RSS feeds, it does allow for gathering of articles from basically any
news site.

## How can you create a profile?
So lets say you maybe have found a website you want to include in the feed, it
is certainly possible to create your own profile and then either submit a pull
request to the OSINTprofiles repo or host the feed yourself.

First of all you have to find a website utilizing OG (Open Graph) tags on their
news articles (which is basically any newssite created in this century). After
this try and locate and RSS feed for the website. If that is unfortunatly not
possible, locate the front page for the relevant part of the new sites (some
news sites has multiple "front" page for different topics) and note down the URL.
Now you simply have to fill in those details in the template corresponding to if
the website has a RSS feed or not along with navigating to an article to find
the details described in the next section.

## The contents of a profile
Now, the first few details will be descriped in the template and are simple
things like the url to the news site or the name of it, but as you continue
filling it out, a lot of details will be different kinds of HTML tags and their
class, which allows OSINTer to extract the right details from the articles by
identifying and extracting those HTML elements described in the profile. To find
those yourself hovewer, it is recommended to simply open up an article from the
news site in question, and then use the "inspect" tool build into most modern
browsers. This will allow you to pinpoint excactly what type of HTML element and
what class a part of the page is.

Profiles in OSINTprofiles also use a technology known as CSS selectors. These
are expression taken from CSS which are able to pinpoint specific elements in
the DOM and they are a key technology in OSINTprofiles. This means that if
you're not familiar with them, you should go and read [the relevant
documentation](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Selectors)
before attempting to create profiles yourself.

#### The source section
If you have found a news site with a functioning RSS feed, this whole section
will already be described in the "ScrapingTemplate", but if you have found one
where scraping is necessary to collect articles, you will need the following
descriptions:

- **ScrapingTargets**: This section describes which parts of the page to look
  for links for articles in
	- **containerList**: This is a CSS selector for the container element, which
	  contains every single relevant link.
	- **linkContainers**: This is a CSS selector for a container element which
	  contains a single link to an article.
	- **links**: This is a CSS selector for the relevant links. Often this is
	  simply "a[href]" when used in conjunction with either containerList or
	  linkContainers (or both).

If one if these attributes isn't relevant/present on the website you're trying
to build a profile for, simply leave them blank (some websites for example
doesn't have a container element around each single link, in which case
linkContainers should be left blank). Do keep in mind though that the links
attribute can't be left blank (so if in doubt, simply use the selector
"a[href]".

#### The scraping section
The prior section was mostly about where to find the articles to scrape, but in
contrast to that, this section is about where on a given article page to find
the relevant details.

- **type**: This is an attribute that currently has two options; 1. specifying
  "no-action", which will have no effect on the scraping and 2. specifying JS
  injections for the scraping proccess. To specify JS injections, specify a
  semicolon sepearated list of JS injections in this format:

  ```JS:[injectionFileName];JS:[injectionFileName];...```

  Here, the injectionFileName is the name of the js file in the
  OSINTbackend/profiles/js_injections directory containing the JS injection,
  excluding the .js extension.
- **meta**: The section describing where to find meta information about the
  article:
    - **author**: The name of the author
	- **publish_date**: The date the article was published
	- **title**: The title of the article
	- **description**: A short description of the article
	- **image_url**: An url for an image related to the article
- **content**: The section describing how to scrape the main text body:
	- **container**: This is a CSS selector for the container containing the
	  main text of the article.
	- **remove**: This is a semicolon-seperated list of CSS selectors for
	  elements within the **container** that you want to remove before saving
	  the article (so this could be divs containing ads or a PSA that has
	  nothing to do with the article).

