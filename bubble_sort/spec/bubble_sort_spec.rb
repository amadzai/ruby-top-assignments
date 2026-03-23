# frozen_string_literal: true

require_relative '../bubble_sort'

RSpec.describe '#bubble_sort' do
  it 'matches the Odin sample output' do
    expect(bubble_sort([4, 3, 78, 2, 0, 2])).to eq([0, 2, 2, 3, 4, 78])
  end

  it 'sorts an already sorted array' do
    expect(bubble_sort([1, 2, 3, 4])).to eq([1, 2, 3, 4])
  end

  it 'sorts arrays with negative numbers and duplicates' do
    expect(bubble_sort([3, -1, 3, 2, -5])).to eq([-5, -1, 2, 3, 3])
  end

  it 'handles empty arrays' do
    expect(bubble_sort([])).to eq([])
  end
end
