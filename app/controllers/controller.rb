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
        Quote.find(input_text_array[1].to_i).destroy
        QuoteView.delete_quote_screen
      when "random"
        QuoteView.display(Quote.all.sample)
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
  end
end