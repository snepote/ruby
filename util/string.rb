page = 'page=1&size=25'
# page = nil
path = '/some_path' + ("&#{page}" unless page.nil?).to_s
# path += "&#{page}" unless page.nil?

puts path
