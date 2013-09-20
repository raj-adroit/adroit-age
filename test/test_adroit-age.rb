require 'helper'

class TestAdroitAge < Test::Unit::TestCase

   setup do
       @age = AdroitAge.new "23/01/1990"
   end

   should "Return age for correct date and date format" do
      assert_equal 23, @age.find
    end
end
