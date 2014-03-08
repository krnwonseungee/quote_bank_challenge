require_relative 'config/application'

QuoteView.welcome_message
begin
  QuoteView.return_options_screen
end while Controller.run!(gets.chomp.split(" "))