#!/usr/bin/ruby

class AppContext
    class << self
        def supports
            %w[Germany]
        end
    end
end

class Country
  UK = 'UK'
  IRELAND = 'Ireland'
  FRANCE = 'France'
  GERMANY = 'Germany'
  NETHERLANDS = 'Netherlands'
end

case AppContext::supports
when [Country::FRANCE]
    puts 'db/reference_data/h2france'
when [Country::GERMANY]
    puts 'db/reference_data/germany'
else
    puts 'db/reference_data/'
end

count_updated = 0

if count_updated > 0 then
    puts "Records updated #{count_updated}"
else
    puts 'No records updated'
end
puts puts 'No records updated' if count_updated == 0    