require 'test_helper'

class Day4Test < ActiveSupport::TestCase
  def setup
    @klass = AOC2022::Answers::Day4
  end

  test 'test' do
    assert_equal 494, @klass.ans_1
    assert_equal 833, @klass.ans_2
  end
end
