participants = ['Juan', 'Pedro', 'Sebastian']

not_playing = ['Leo']
teams = Array.new(5)

participants.sample(participants.count).each_with_index do |member, index|
  team = index % teams.count
  teams[team] = [] unless teams[team].is_a? Array
  teams[team] << member
end

teams.each_with_index do |team, index|
  # puts "Team [#{team[0]}] #{team[1..team.count].join(", ")}"
  puts "[team #{index + 1}] #{team[0..team.count].join(", ")}"
end
