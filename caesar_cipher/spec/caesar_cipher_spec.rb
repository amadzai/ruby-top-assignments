# frozen_string_literal: true

require_relative '../caesar_cipher'

RSpec.describe '#caesar_cipher' do
  it 'matches the Odin sample output' do
    expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
  end

  it 'wraps from z to a' do
    expect(caesar_cipher('xyz', 3)).to eq('abc')
  end

  it 'preserves uppercase and lowercase letters' do
    expect(caesar_cipher('AbCd', 2)).to eq('CdEf')
  end

  it 'leaves non-letter characters unchanged' do
    expect(caesar_cipher('hello, world! 123', 1)).to eq('ifmmp, xpsme! 123')
  end

  it 'supports shifts larger than 26 using wraparound' do
    expect(caesar_cipher('What a string!', 31)).to eq('Bmfy f xywnsl!')
  end
end
