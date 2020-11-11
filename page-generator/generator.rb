require 'csv'
require 'slugify'

PAGES_DIRECTORY = 'pages'

# Generates an output HTML page from replacing the content in a given template
def generate(page: {title: nil, block: nil, filename: nil}, template:)
  content = template % page
  File.write("#{PAGES_DIRECTORY}/#{page[:filename]}", content)
end

# Read CVS and group content
items = CSV.open('data - vertical.CSV', col_sep: ',', headers: :first_row).map(&:to_h)
city_service_pages = {}
block = File.open('block.html').read
items.each do |item|
  name = "#{item['service']}_#{item['location']}".slugify
  city_service_pages[name] = {
    title: "Find the top #{item['service']} in #{item['location']}",
    filename: "#{name}.html", block: ''
    } unless city_service_pages.key?(name)
  city_service_pages[name][:block] += (block % item.transform_keys(&:to_sym)).to_s
end

cities = {}
items.each do |item|
  city_slug    = item['location'].slugify
  service_slug = item['service'].slugify
  cities[city_slug] = { name: item['location'], services: {} } unless cities.key?(city_slug)
  cities[city_slug][:services][service_slug] = {
    name: item['service'], count: 0
    } unless cities[city_slug][:services].key?(service_slug)
  cities[city_slug][:services][service_slug][:count] += 1
end

# Deletes all existing files in target directory
Dir.foreach(PAGES_DIRECTORY) do |file|
  fn = File.join(PAGES_DIRECTORY, file)
  File.delete(fn) unless file == '.' || file == '..'
end

# Generate city pages
city_block = File.open('city-block.html').read
cities.each do |city_slug, city|
  page = { title: "Top rated services in #{city[:name]}", filename: "#{city_slug}.html", block: '' }
  city[:services].each do |slug, service|
    block = service.merge!({link: "#{slug}-#{city_slug}.html"})
    page[:block] += (city_block % block).to_s
  end
  generate(page: page, template: File.open('city-template.html').read)
end

# Generates city service pages
city_service_pages.each do |key, page|
  generate(page: page, template: File.open('template.html').read)
end
