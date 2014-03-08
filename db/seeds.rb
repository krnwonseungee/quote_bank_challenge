


# dbc_quote1 = Quote.create(author: "Duke Ellington", text: "Fate is being kind to me, fate doesn't want me to be too famous too young.")
# dbc_quote2 = Quote.create(author: "African Proverb", text: "If you want to go fast, go alone. If you want to go far, go together.")
# dbc_quote3 = Quote.create(author: "Jedi Master Yoda", text: "Do or do not there is not try")
# dbc_quote4 = Quote.create(author: "David Whyte", text: "Anything or anyone that does not bring you alive is to small for you.")
# dbc_quote5 = Quote.create(author: "Earl Nig", text: "Luck is when preparedness meets opportunity, and opportunity is everywhere.")
# dbc_quote6 = Quote.create(author: "Daniel Burnham", text: "Make no little plans; The have no magic to stir mens blood.")


# Category.create(name: "DBC")

# Category.find(1).quotes << Quote.find(1)
# Category.find(1).quotes << Quote.find(2)
# Category.find(1).quotes << Quote.find(3)
# Category.find(1).quotes << Quote.find(4)
# Category.find(1).quotes << Quote.find(5)
# Category.find(1).quotes << Quote.find(6) => uncomment to seed lines 16 thru 31

6.times do |i|
  this_quote = Quote.find(i+1)
  puts "Quote: #{this_quote.text} \nBy #{this_quote.author}"
  puts
end


