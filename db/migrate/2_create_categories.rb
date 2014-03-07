# this is where you should use an ActiveRecord migration to

class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string      :name
      t.timestamps
    end
  end
end
