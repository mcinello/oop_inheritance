require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test
  def setup
    @response = HTTParty.get("https://restcountries.eu/rest/v2/lang/en")
  end


  def test_language_in_json_parse
    result = JSON.parse(@response.body)
    assert_equal "en", result.first["languages"].first["iso639_1"]
  end
end
