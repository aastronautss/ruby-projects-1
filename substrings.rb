def substrings(str, dictionary)
	output = {}
	words = str.downcase.gsub(/[^a-z0-9\s]/, '').split
	dictionary.each do |substr|
		words.each do |word|
			if word.include? substr
				output[substr] ? output[substr] += 1 : output[substr] = 1
			end
		end
	end
	output
end

dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
print substrings("Howdy partner, sit down! How's it going?", dict)