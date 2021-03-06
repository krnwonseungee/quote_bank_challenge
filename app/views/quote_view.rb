class QuoteView
  class << self
    def welcome_message
      puts ""
      puts "Welcome to Quot.ly! a random quote to lighten up your day :)"
    end

    def return_options_screen
      puts ""
      puts "Pick an option:"
      puts "ADD [\"quote\"] [author]  (e.g. ADD \"this quote\" author name)"
      puts "DELETE [id]"
      puts "RANDOM"
      puts "LIST"
      puts "QUIT"
      print "input: "
    end

    def error_screen
      puts "Please select a valid option."
    end

    def display(quote_obj)
      puts "#{quote_obj.id}. #{quote_obj.text} - #{quote_obj.author}"
    end

    def display_all(ar_quote_obj)
      ar_quote_obj.each do |quote_obj|
        puts "#{quote_obj.id}. #{quote_obj.text} - #{quote_obj.author}"
      end
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
