require_relative '../label'

ITEMS_TYPE = %w[BOOK MUSIC GAME MOVIE].freeze
def assign_label
  loop do
    puts 'Select the type of item that you want to add label:'
    ITEMS_TYPE.each_with_index do |item, index|
      puts "#{index + 1}- #{item}"
    end
    puts '0- BACK TO MENU'
    item_type = gets.chomp.to_i
    break if item_type.zero?

    show_books if item_type == 1
    show_games if item_type == 3
  end
end

def show_books
  if books.empty?
    puts "No books in catalog\n\n"
    return
  end
  puts 'Select the book to assign label by index number'
  books.each_with_index do |book, index|
    puts "#{index}) #{book.publisher} - #{book.publish_date} - #{book.cover_state}"
  end
  selected_index = gets.chomp.to_i
  print 'Label title: '
  title = gets.chomp
  print 'Label color: '
  color = gets.chomp
  label = Label.new(title, color)
  books[selected_index].add_label(label)
  labels << label
  puts 'Label assigned successfully'
end

def show_games
  if games.empty?
    puts "No games in catalog\n\n"
    return
  end
  puts 'Select the game to assign label by index number'
  games.each_with_index do |game, index|
    puts "#{index}) #{game.multiplayer} - #{game.publish_date}"
  end
  selected_index = gets.chomp.to_i
  print 'Label title: '
  title = gets.chomp
  print 'Label color: '
  color = gets.chomp
  label = Label.new(title, color)
  games[selected_index].add_label(label)
  labels << label
  puts 'Label assigned successfully'
end
