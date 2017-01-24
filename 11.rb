require 'rspec'

class User
  attr_accessor :name, :email
  
  def initialize
    yield(self) if block_given?
  end
end

user = User.new do |u|
  u.name = "Andrey"
  u.email = "andrzejsew@gmail.com"
end

user

describe  'Block User' do
  it 'Allow a user to be created with a block of values' do
    user = User.new do |u|
      u.name = "Andrey"
      u.email = "andrzejsew@gmail.com"
    end
    
    expect(user.name).to eq('Andrey')
    expect(user.email).to eq('andrzejsew@gmail.com')
  end
  
  it 'Allow a user to be created witout default values' do
    user = User.new
    user.name = "Andrey"
    user.email = "andrzejsew@gmail.com"
    
    expect(user.name).to eq('Andrey')
    expect(user.email).to eq('andrzejsew@gmail.com')
  end
end