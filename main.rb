def stock_picker(stocks)
    sum = stocks[0]-stocks[-1]
    best = Array.new(2)
    stocks.each_with_index do |stock, i|
        break if i == stocks.length-1
        max_slice = stocks[(i+1)..-1].each_with_index.max
        total = max_slice[0] - stock
        if sum < total
            sum = total
            best[0] = i
            best[1] = max_slice[1]+i+1
        end
    end
    best
end