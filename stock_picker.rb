def stock_picker(days = [])
	best_days = [0, 1]
	best_profit = days[1] - days[0]
	days.each do |i|
		test = days[(days.index(i) + 1)..-1]
		test.each do |j|
			if j - i > best_profit
				best_profit = j - i
				best_days[0] = days.index(i)
				best_days[1] = days.index(j)
			end
		end
	end
	best_days
end

print stock_picker([17,3,6,9,15,8,6,1,10])