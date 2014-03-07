require_relative '../../db/config'

class Category < ActiveRecord::Base
  has_many :quotes
end