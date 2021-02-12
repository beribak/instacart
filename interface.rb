users_choice = ""
total = 0
# cart = []

puts "Welcome to our E-store!!!"
puts "========================="

store_menu = {
	"kiwi" => [0.4, 2],
	"apple" => [1.2, 4],
	"peach" => [3, 1],
	"banana" => [2, 2]
}

puts "Store Menu:"
puts "========================="

store_menu.each do |fruit, arr|
	puts "#{fruit} -- $#{arr[0]}"
	puts "-------------------------"
end

until users_choice == "quit"
	puts "What item do you want to purchase? (or 'quit' to checkout)"
	puts "===================="
	users_choice = gets.chomp
	
	if users_choice != "quit"
		puts "How many?"
		puts "===================="
		num_of_item = gets.chomp.to_i
	end

	if store_menu.key?(users_choice)
		if num_of_item >  store_menu[users_choice][1]
			puts "Sorry, there is only #{users_choice} #{store_menu[users_choice][1]}s left."
			puts "===================="
		else
			num_of_item.times do |number|
				total += store_menu[users_choice][0]
				# cart << users_choice 
			end
			puts "You added #{num_of_item} #{users_choice} to your cart."
			puts "===================="
		end
	else
		puts "Sorry, we don't have pineapple today."
		puts "===================="
	end
end

puts "========BILL=========="
puts "$$$#{total}$$$"
puts "===================="

