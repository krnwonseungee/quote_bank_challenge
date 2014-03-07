class QuoteView
  def intro_list_commands
    puts "Welcome to Quot.ly! a random quote to lighten up your day :)"
    puts "Pick an option:"
    puts "ADD"
    puts "DELETE"
    puts "RANDOM"
    puts "LIST"
    puts "QUIT"
  end

  def return_options_screen
    puts "Pick an option:"
    puts "ADD"
    puts "DELETE"
    puts "RANDOM"
    puts "LIST"
    puts "QUIT"
  end
  
  def error_screen
    puts "Please select a valid option."
  end

  def random_display(quote_obj)
    puts "#{quote_obj.text}  - #{quote_obj.author}"
  end

  def add_quote_screen
    puts "Your quote has been added!"
  end

  def delete_quote_screen
    puts "Your quote has been deleted."
  end

  def exit_screen
    puts "Have an enlightening day!"
  end
end

# rake run
# display welcome screen + commands
# user types in "add" "delete" "random" or "list" into console,
#   which will then run the appropriate command.

# add:
# "Your quote has been added!"
# (return to the options screen)
# delete:
# "Your quote has been deleted."
# (return to the options screen)
# quit
# print the exit screen exit the progra
