class QuoteView
  def intro_screen
    puts "Welcome to Quot.ly! Here's a random quote to lighten up your day :)"
  end
  def list_commands
    puts "Pick an option:"
    puts "ADD"
    puts "DELETE"
    puts "RANDOM"
    puts "LIST"
  end
  def random_display(quote_obj)
    puts "#{quote_obj.text}  - #{quote_obj.author}"
  end

  def exit_screen
    puts "Have an enlightening day!"
  end
end

