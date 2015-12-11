require 'sitemap-parser'

sitemap = SitemapParser.new 'https://www.helpling.de/sitemap.xml'

sitemap.urls.to_a.each do |url|
  puts url.at('loc').content
end
