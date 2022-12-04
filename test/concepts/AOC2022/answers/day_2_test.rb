require 'test_helper'

class Day2Test < ActiveSupport::TestCase
  def setup
    @klass = AOC2022::Answers::Day2
  end

  test 'test' do
    assert_equal 12_586, @klass.ans_1
    assert_equal 13_193, @klass.ans_2
  end
end
