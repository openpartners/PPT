require 'rspec'

def randome_numbers
  Array.new(20) { rand 1000 }
end

describe 'Generate an Array of Random Numbers' do
  it 'create collection of random numbers ranging from 1 to 1000' do
    random_set_one = randome_numbers
    random_set_two = randome_numbers
    expect(randome_numbers.count).to eq(20)
    expect(random_set_one).to_not eq(random_set_two)
  end
end