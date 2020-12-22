require 'faker'
require 'json'
require 'slugify'

profession = []
5.times do
  profession << Faker::Company.profession
end

puts "The following profession will be included: #{profession.join(', ')}"
puts "in the following cities"
puts cities = ['Berlin', 'Hamburg', 'Frankfurt']

File.open('professionals.csv', 'w') do |f|
  f.puts 'name,email,service,location,company,logo,avatar'

  80.times do
    name     = Faker::Name.name
    email    = Faker::Internet.email
    service  = profession.sample
    location = cities.sample
    company  = "\"#{Faker::Company.name} #{Faker::Company.suffix}\""
    avatar   = Faker::Avatar.image(slug: name.to_s.slugify, size: '50x50', format: 'jpg')
    logo     = Faker::Company.logo.to_s.sub('medium', 'small')
    f.puts [name, email, service, location, company, logo, avatar].join(',')
  end
end
