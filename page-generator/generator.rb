require 'csv'
require 'slugify'

PAGES_DIRECTORY = 'pages'
BLOCK_ITEM_REPLACEMENT = "<tr>
    <td>%{name}</td>
    <td>%{email}</td>
    <td>%{service}</td>
</tr>"

# Read CVS and group content
items = CSV.open('data.csv', col_sep: ';', headers: :first_row).map(&:to_h)
pages = {}
items.each do |item|
  name = "#{item['service']}_#{item['location']}".slugify
  pages[name] = {title: "#{item['service']} in #{item['location']}", filename: "#{name}.html", block: ''} unless pages.key?(name)
  pages[name][:block] = pages[name][:block] + (BLOCK_ITEM_REPLACEMENT % item.transform_keys(&:to_sym)).to_s
end

# Deletes all existing files in target directory
Dir.foreach(PAGES_DIRECTORY) do |file|
  fn = File.join(PAGES_DIRECTORY, file)
  File.delete(fn) unless file == '.' || file == '..'
end

# Replace placeholders and generate output HTML page
template = File.open("template.html").read
pages.each do |key, page|
  content = template % page.slice(:title, :block)
  File.write("#{PAGES_DIRECTORY}/#{page[:filename]}", content)
end
