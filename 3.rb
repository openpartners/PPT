require 'rspec'

headers = [
    'a',
    'b',
    'c',
    'd',
    'f'
    ]
astros = [
    'aa',
    'bb',
    'cc',
    'dd',
    'ff'
    ]
rangers = [
    'aaa',
    'bbb',
    'ccc',
    'ddd',
    'fff'
    ]

def position_filter(headers, *data)
  headers.zip(*data)
end

position_filter(headers, astros, rangers)

describe 'Position Filter' do
    it 'lines up players with the positions' do
      test_headers = ['a', 'b', 'c']
      test_team = ['aa', 'bb', 'cc']
      expect(position_filter(test_headers, test_team).first).to eq(['a', 'aa'])
    end
end

