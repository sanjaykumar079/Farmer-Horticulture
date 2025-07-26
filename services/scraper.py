import scrapy

class NewsSpider(scrapy.Spider):
    name = "news"
    start_urls = ['https://example.com/agri-news']  # Replace with actual URL

    def parse(self, response):
        yield {
            'title': response.css('h1::text').get(),
            'content': response.css('p::text').get(),
        }