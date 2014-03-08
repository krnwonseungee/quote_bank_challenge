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
      author: 'George W. Bush',
      text:   'Mission accomplished.'
      )
  end

  it 'creates a new quote object' do
    expect(@quote.author).to include 'Bush'
  end

  it 'saves that new quote to SQLite3' do
    @quote.save
  end

  it 'retrieves that quote from SQLite3' do
    Quote.exists?(author: 'George W. Bush')
  end

  it 'displays a quote' do
    pending
  end

  it 'deletes the George W. Bush quote just added.' do
    Controller.delete(@quote.id)
    expect(Quote.exists?(author: 'George W. Bush')).to be_false
  end

  # it 'retrieves a random quote' do
  #   # 5 times do...
  #   pending
  # end
end
