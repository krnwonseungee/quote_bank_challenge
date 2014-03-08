require_relative 'config/application'

begin
  QuoteView.intro_list_commands
end while Controller.run!(gets.chomp.split(" "))