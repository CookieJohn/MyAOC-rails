require 'test_helper'

class Day2Test < ActiveSupport::TestCase
  def setup
    @klass = AOC2022::Answers::Day2
  end

  test 'test_1' do
    assert_equal 12_586, @klass.ans_1
  end

  test 'test_2' do
    assert_equal 13_193, @klass.ans_2
  end
end
