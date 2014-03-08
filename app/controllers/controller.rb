require_relative '../../config/application'

class Controller

  class << self
    def run!(input_text_array)
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
        QuoteView.display_all(Quote.all)
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
      input_text_array.shift
      quote_arr = input_text_array.join(" ").split("\"")
      quote_arr.shift
      quote_arr[1].strip!
      Quote.create(text: quote_arr[0], author: quote_arr[1])
    end

    def delete_quote(input_text_array)
      # input_text_array
    end
  end
end

# Controller.run!

# ar_quote_obj
#   quote_obj
#     message
# end