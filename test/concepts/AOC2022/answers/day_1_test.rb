require 'test_helper'

class Day1Test < ActiveSupport::TestCase
  def setup
    @klass = AOC2022::Answers::Day1
  end

  test 'test_1' do
    assert_equal 70_720, @klass.ans_1
  end

  test 'test_2' do
    assert_equal 207_148, @klass.ans_2
  end
end
