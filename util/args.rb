class Something
  def method(param_one: nil, param_two: nil, param_tree: nil)
    [param_one, param_two, param_tree].compact.map do |param|
      param.to_s
    end.join('&')

  end
end

s = Something.new

puts s.method(param_two: 'hey', param_one: 'you')
