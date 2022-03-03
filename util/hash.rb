# replace value of an item of self Hash

hash = { one: 'one', two: 'two' }
p hash[:one]
p hash[:one].class

hash[:one] = hash[:one].to_sym

p hash[:one]
p hash[:one].class
