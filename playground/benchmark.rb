require 'benchmark'

puts Benchmark.measure('label') {
  for i in 1..1_000 do
    puts 'ruby!'
  end
}
