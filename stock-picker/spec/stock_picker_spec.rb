# frozen_string_literal: true

require_relative "../stock_picker"

RSpec.describe "#stock_picker" do
  it "matches the Odin sample output" do
    expect(stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
  end

  it "always buys before it sells" do
    prices = [9, 8, 7, 1, 6]
    buy_day, sell_day = stock_picker(prices)

    expect(buy_day).to be < sell_day
    expect([buy_day, sell_day]).to eq([3, 4])
  end

  it "chooses the most profitable pair when multiple rises exist" do
    expect(stock_picker([10, 2, 6, 1, 7])).to eq([3, 4])
  end
end
