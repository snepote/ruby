require 'screencap'

COLOR = 'ff0'
BASE_AVATAR_API = 'http://api.adorable.io/avatars'
avatars =  { face:
                 { eyes: %W[eyes1 eyes10 eyes2 eyes3 eyes4 eyes5 eyes6 eyes7 eyes9],
                   nose: %W[nose2 nose3 nose4 nose5 nose6 nose7 nose8 nose9],
                   mouth: %W[mouth1 mouth10 mouth11 mouth3 mouth5 mouth6 mouth7 mouth9]}}

avatars[:face][:eyes].each do |eye|
  avatars[:face][:nose].each do |nose|
    avatars[:face][:mouth].each do |mouth|
      face = "/face/#{eye}/#{nose}/#{mouth}/#{COLOR}"
        puts "Downloading: [avatars/#{face.gsub('/', '-')[1..-1]}.png]"
        f = Screencap::Fetcher.new("#{BASE_AVATAR_API}/#{face}")
        f.fetch(:output => "avatars/#{face.gsub('/', '-')[1..-1]}.png")
        f = nil
    end
  end
end

