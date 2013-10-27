require 'test/unit'
require 'ip2dword'

class IP2dwordTest < Test::Unit::TestCase
  def test_IP2dword_convert
    assert_equal(Hash,IP2dword.convert("192.168.1.1").class)
    assert_equal("Invalid IP",IP2dword.convert("100."))
  end
end
