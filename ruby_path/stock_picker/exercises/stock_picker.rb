def stock_picker(arr)
    leftWindow = 0
    rightWindow = 1
    currentMaxProfit = 0
    currentBuyDay = 0
    currentSellDay = 0

    while rightWindow < arr.length() do
       if arr[leftWindow] < arr[rightWindow]
        difference = arr[rightWindow] - arr[leftWindow]
        if difference > currentMaxProfit 
            currentMaxProfit = difference
            currentBuyDay = leftWindow
            currentSellDay = rightWindow
        end
        rightWindow = rightWindow + 1
       elsif arr[leftWindow] > arr[rightWindow]
        leftWindow = rightWindow
        rightWindow = rightWindow + 1
       else
        rightWindow = rightWindow + 1
       end
    end
    
    buy_and_sell_days = [currentBuyDay, currentSellDay]
    return buy_and_sell_days
end

# MAIN
