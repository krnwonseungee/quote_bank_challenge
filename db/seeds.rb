require 'faker'

# weekend = List.create(title: "Weekend")
# weekdays = List.create(title: "Weekdays")

# weekend.tasks << Task.create(message: "Walk the dog!")
# weekend.tasks << Task.create(message: "Go to the store")
# weekdays.tasks << Task.create(message: "Clean the house")
# weekdays.tasks << Task.create(message: "Call my mom and your mom")
# weekdays.tasks << Task.create(message: "Take a shower")
weekend = List.new(title: "Weekend")
task = Task.new(message: "walk dog")
weekend.tasks << task
task.save
weekend.save

# List.new(title: "Weekend").save
# Task.new(message: "walk dog").save

# List.find(1) << Task.find(1)