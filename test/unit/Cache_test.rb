require 'minitest/autorun'

class Cache_test < MiniTest::Unit::TestCase
  def setup
    @register = CashRegister.new
  end
  def test_default_is_zero
    assert_equal 0, @register.total
  end
end

class CashRegister
 
def total
  @items.inject(0) {|sum, item| sum += item }
end
#def scan(item)
#  @items << item
#end

#def initialize
# @items = []
#end
end

