require 'rspec'
require 'benchmark'

arr = Array.new(100_000) { rand 1000 }

def new_max array_of_elements
  max_value = 0
  
  array_of_elements.each do |i|
    if i > max_value
      max_value = i
    end
  end
  max_value
end

Benchmark.bm(10) do |x|
  x.report('Each: ') { new_max arr }
  x.report('Sorted: ') { arr.sort.last }
  x.report('Max: ') { arr.max }
end

#                  user     system      total        real
# Each:        0.000000   0.000000   0.000000 (  0.004582)
# Sorted:      0.010000   0.010000   0.020000 (  0.015786)
# Max:         0.010000   0.000000   0.010000 (  0.005292)

describe 'New Max method' do
  it 'returns the max value from an array efficiently' do
    test_array = [2, 4, 10, 6, 3]
    expect(new_max(test_array)).to eq(10)
  end
end