require 'rake'
require 'rspec/core/rake_task'
# require_relative 'db/config'
require_relative 'config/application'

desc "create the database"
task "db:create" do
  puts "Creating file #{DB_PATH} if it doesn't exist..."
  touch DB_PATH
end

desc "drop the database"
task "db:drop" do
  puts "Deleting #{DB_PATH}..."
  rm_f DB_PATH
end

desc "seed the database"
task "db:seed" do
  puts "creating new data in the database"
  require APP_ROOT.join('db', 'seeds.rb')
end

desc "migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)."
task "db:migrate" do
  ActiveRecord::Migrator.migrations_paths << File.dirname(__FILE__) + 'db/migrate'
  ActiveRecord::Migration.verbose = ENV["VERBOSE"] ? ENV["VERBOSE"] == "true" : true
  ActiveRecord::Migrator.migrate(ActiveRecord::Migrator.migrations_paths, ENV["VERSION"] ? ENV["VERSION"].to_i : nil) do |migration|
    ENV["SCOPE"].blank? || (ENV["SCOPE"] == migration.scope)
  end
end

desc "Start IRB with application environment loaded"
task "console" do
  exec "irb -r./config/application"
end

desc "Starts the application with introductory message"
task "run" do
  exec "irb -r./quote_bank.rb"
end

desc "Run the specs"
RSpec::Core::RakeTask.new(:specs)

task :default  => :specs
