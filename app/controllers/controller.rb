require_relative '../../config/application'

class Controller

  def self.run!(input_text_array)
    # raise unless input_text_array
    # input_text_array = input_text.split(" ")
    QuoteView.intro_list_commands

    command = input_text_array[0]
    case command.downcase
    when "add"
      add_quote(input_text_array)
      QuoteView.add_quote_screen
    when "delete"
      delete_quote(input_text_array)
      QuoteView.delete_quote_screen
    when "random"
      ar_quote_obj = Quote.find(rand(Quote.all.length)+1)
      QuoteView.display(ar_quote_obj)
    when "list"
      QuoteView.display(Quote.all)
    when "quit"
      QuoteView.exit_screen
      return false
    else
      QuoteView.error_screen
    end
    return true
  end

  private
  def add_quote(input_text_array)
    quote_arr = input_text_array.shift.join(" ")
    quote_arr.split("\"")
    quote_arr[1].strip!
    Quote.create(text: quote_arr[0], author: quote_arr[1])
  end

  def delete_quote(input_text_array)
    # input_text_array
  end


end

# Controller.run!

# ar_quote_obj
#   quote_obj
#     message
# end