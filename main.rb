def stock_picker(stocks)
    min = [stocks[0], 0]
    days = [0, stocks.length-1]
    best = stocks[0]-stocks[-1]
    stocks.each_with_index do |stock, i|
        min = [stock, i] if stock < min[0]
        total = stock - min[0]
        if total > best
            days = [min[1], i]
            best = total
        end 
    end
    return days
end