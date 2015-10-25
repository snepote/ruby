le = Dir.entries("..")
#print le.include?("intjoy")

a = [1,2,3,4,5]
a.include?(3)   # => true

#b = ["a", "b"]
b = Dir.entries("..")
#print b.include?("intjoy")

def print_dir( path )
    files = []
    Dir.entries(path).each do |file| 
        files << file
    end
    files
end

print print_dir('..').to_s

