#find the maximum difference by looping through each day
def stock_picker(prices)
    buy_sell_days = [0,1]
    margin = prices[1]-prices[0]
    for i in 0..prices.length-1 do
        for j in i+1..prices.length-1 do
            if (prices[j]-prices[i]) > margin
                 margin = prices[j]-prices[i]
                 buy_sell_days[0] = i
                 buy_sell_days[1] = j
            end
        end
    end
   buy_sell_days
end



p stock_picker([17,3,6,9,15,8,6,1,10])