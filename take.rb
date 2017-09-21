require 'screencap'
require 'date'

require 'sitemap-parser'

# sitemap = SitemapParser.new 'https://www.helpling.de/sitemap.xml'
#
# sitemap.urls.to_a.each do |url|
#   puts url.at('loc').content
# end

countries = %w[de nl]
countries.each do |country|
  f = Screencap::Fetcher.new("http://www.google.com")
  screenshot = f.fetch(:output => "screenshots/google_com_#{DateTime.now.strftime('%Q')}.png")
end
