# require_relative '../../db/config'

class Quote < ActiveRecord::Base
  belongs_to :category
end