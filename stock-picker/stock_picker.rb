def stock_picker(array)
  highest_profit = 0
  highest_profit_array = []

  array.each_with_index do |buy_price, buy_day|
    array[buy_day + 1..-1].each_with_index do |sell_price, offset|
      sell_day = buy_day + 1 + offset
      profit = sell_price - buy_price

      if profit > highest_profit
        highest_profit = profit
        highest_profit_array = [buy_day, sell_day]
      end
    end
  end

  highest_profit_array
end