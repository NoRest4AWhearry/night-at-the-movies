movies = {
		prestige: 5,
		shrek:    4,
		momento:  4,
		bigdaddy: 3
}

puts 'Make a choice:'
puts '--add : to add a movie title'
puts '--Update : to update a movie rating'
puts '--Display: to dispaly all movies'
puts '--Delete : to delete a movie'

choice = gets.chomp.downcase

case choice
	when 'add'
		puts 'What movie do you want to add?'
		title = gets.chomp
		if movies[title.to_sym].nil?
			puts "What's the rating? (Type a number 0 to 4.)"
			rating = gets.chomp
			movies[title.to_sym] = rating.to_i
			puts "#{title} has been added with a rating of #{rating}."
		else
			puts 'Title Exits'
		end
	when 'update'
		puts 'What movie do you want to update?'
		title = gets.chomp
		if movies[title.to_sym].nil?
			puts "Movie doesn't exist"
		else
			puts "What's the rating? (Type a number 0 to 4.)"
			rating = gets.chomp
			movies[title.to_sym] = rating.to_i
			puts "#{title} has been updated with a rating of #{rating}."
		end
	when 'display'
		movies.each {|movie, rating|
			puts "#{movie}: #{rating}"}
	when 'delete'
		puts 'What movie do you want to update?'
		title = gets.chomp
		if movies[title.to_sym].nil?
			puts "Movie doesn't exist"
		else
			movies.delete(title.to_sym)
			puts "#{title} has been deleted."
			movies.each {|movie, rating|
				puts "#{movie}: #{rating}"}
		end
	else
		puts 'I do not understand that command'
end