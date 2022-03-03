

def pass_by_reference(str)
  str % {name: 'Sebastian'}
end

some_str = 'My name is %{name}'
pp "before: #{some_str}"

pass_by_reference(some_str)

pp "after: #{some_str}"
