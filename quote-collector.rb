require_relative 'multilinguist'

class QuoteCollector < Multilinguist

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
    return random_quote
  end

  def self.collection
    @@quote_collection
  end

  def quote
    @quote
  end

  def quote=(quote)
    @quote = quote
    return @quote
  end

end

quote1 = QuoteCollector.create("To be, or not to be? That is the question.")
quote2 = QuoteCollector.create("Hello world!")
quote3 = QuoteCollector.create("Life is beautiful")

# puts quote1.quote

random_quote = QuoteCollector.browse_quote
random_quote.travel_to("Bulgaria")
puts random_quote.say_in_local_language(random_quote.quote)
