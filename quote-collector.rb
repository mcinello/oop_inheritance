require_relative 'multilinguist'

require 'pry'

class QuoteCollector

  @@quote_collection = []

  def initialize(quote)
    @quote = quote
  end

  def self.create(quote)
    new_quote = QuoteCollector.new(quote)
    @@quote_collection << new_quote
    return new_quote
  end

  def self.browse_quote
    random_quote = @@quote_collection.sample
    return say_in_local_language(random_quote)
  end

  def self.collection
    @@quote_collection
  end

  def quote
    @quote
  end
end

quote1 = QuoteCollector.create("To be, or not to be? That is the question.")

puts QuoteCollector.collection.inspect
