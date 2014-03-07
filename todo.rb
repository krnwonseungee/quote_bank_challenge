require_relative 'config/application'

command = ARGV.shift
text = ARGV.join(' ')

Controller.run!(command, text)
