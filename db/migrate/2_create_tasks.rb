require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string      :message
      t.boolean     :completed
      t.datetime    :created_at
      t.datetime    :updated_at
      t.belongs_to  :list
    end
  end
end
