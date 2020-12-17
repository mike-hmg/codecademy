# Define the movies hash
movies = {
  bill_and_ted: 4
}
# Display first question of what they want to do 
puts "Would you like to add, update, display, or delete?"
# downcase input for easier manipulation
choice = gets.chomp.downcase

# create the initial options
case choice
  when "add"
    puts "What is the title of the movie?"
    title = gets.chomp.downcase.to_sym
    puts "What rating would you give? (1 - 10)"
    rating = gets.chomp.to_i
    if movies[title].nil?
    movies[title] = rating
    else
      puts "already exists"
    end
  when "update"
    puts "What is the title of the movie?"
    title = gets.chomp.downcase.to_sym
    if movies[title].nil?
      puts "Movie does not exist"
    else
      puts "What is the new rating?"
      new_rating = gets.chomp.to_i
      movie[title] = new_rating
    end
  when "display"
    movies.each do |movie,rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
    puts "Which movie would you like to delete?"
    to_delete = gets.chomp.downcase.to_sym
    if to_delete.nil?
      puts "There's nothing to delete"
    else
      movies.delete(title)
      puts "Successfully deleted #{title}"
    end
  else
    puts "Error!"
end
