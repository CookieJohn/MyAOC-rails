require 'test_helper'

class Day3Test < ActiveSupport::TestCase
  def setup
    @klass = AOC2022::Answers::Day3
  end

  test 'test_1' do
    assert_equal 7_793, @klass.ans_1
  end

  test 'test_2' do
    assert_equal 2_499, @klass.ans_2
  end
end
