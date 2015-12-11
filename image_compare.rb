require 'chunky_png'
include ChunkyPNG::Color

images = []
%w[face-eyes1-nose2-mouth1-ff0.png face-eyes1-nose2-mouth3-ff0.png].each do |file|
  # images << {name: file, image: ChunkyPNG::Image.from_file("avatars/#{file}")}
  images << ChunkyPNG::Image.from_file("avatars/#{file}")
end

images.first.height.times do |y|
  images.first.row(y).each_with_index do |pixel, x|
    images.last[x,y] = rgb(
        r(pixel) + r(images.last[x,y]) - 2 * [r(pixel), r(images.last[x,y])].min,
        g(pixel) + g(images.last[x,y]) - 2 * [g(pixel), g(images.last[x,y])].min,
        b(pixel) + b(images.last[x,y]) - 2 * [b(pixel), b(images.last[x,y])].min
    )
  end

end

images.last.save('avatars/diff.png')
