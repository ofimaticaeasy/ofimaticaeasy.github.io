FROM ruby:latest

RUN gem install jekyll
RUN gem install jekyll-sitemap
RUN gem install jekyll-seo-tag

EXPOSE 4000