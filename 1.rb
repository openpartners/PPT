require 'rspec'

string_array = [
    "Web IconHTML & CSS100%",
    "Command LineLearn the Command Line 100%",
    "Ruby IconRuby50%",
    "Git Git100%",
    "SassLearn Sass20%",
    "JQuary IconJQuary1%",
    "Angular 1.X100%",
    "Java JavaScript55%"
    ]

def string_parser string_array
    final_array = []
    string_array.each do |str|
      final_array << str.scan(/\d+/).last.to_i 
      /# last.to_i ==> got: [["100"], ["100"], ["50"], ["100"], ["20"], ["1"], ["1", "100"], ["55"]] #/
    end
    final_array
end

describe "String Parser" do
  it 'can take a string and output the correct values' do
    expect(string_parser(string_array)).to eq([100, 100, 50, 100, 20, 1, 100, 55])
  end
end