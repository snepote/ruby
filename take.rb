require 'screencap'
require 'date'

require 'sitemap-parser'

sitemap = SitemapParser.new 'https://www.helpling.de/sitemap.xml'

sitemap.urls.to_a.each do |url|
  puts url.at('loc').content
end

countries = %w[de nl]
countries.each do |country|
  f = Screencap::Fetcher.new("http://www.helpling.#{country}")
  screenshot = f.fetch(:output => "screenshots/helpling_#{country}_#{DateTime.now.strftime('%Q')}.png")
end
