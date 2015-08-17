def caesar_cipher(string, shift)
	output = ""
	string.each_char do |i|
		if (65..96) === i.ord
			output << (((i.ord - 65 + shift) % 26) + 65).chr
		elsif (96..122) === i.ord
			output << (((i.ord - 97 + shift) % 26) + 97).chr
		else
			output << i
		end
	end
	output
end

puts caesar_cipher("Hi, I'm Tyler!", 9)