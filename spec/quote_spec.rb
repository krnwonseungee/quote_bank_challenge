require 'rspec'
require 'spec_helper'
require 'active_record'

require_relative '../app/models/quote'

describe Quote do

  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Base.connection.table_exists?(:quotes).should be_true
    Quote.delete_all
    @quote = Quote.new
    @quote.assign_attributes(
      author: 'Jedi Master Yoda',
      text:   'Do or do not. There is no try'
      )
  end

  it 'creates a new quote object' do
    expect(@quote.author).to include 'Yoda'
  end

  it 'saves that new quote to SQLite3' do
    @quote.save
  end

  it 'retrieves that quote from SQLite3' do
    Quote.exists?(author: 'Jedi Master Yoda')
  end

  # it 'displays a quote' do
  #   pending
  # end

  # it 'retrieves a random quote' do
  #   # 5 times do...
  #   pending
  # end
end
