require_relative '../config'

class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :author
      t.string :text
      t.belongs_to :categories
      t.timestamps
    end
  end
end