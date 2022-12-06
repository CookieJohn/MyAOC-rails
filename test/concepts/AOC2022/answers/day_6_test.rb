require 'test_helper'

class Day6Test < ActiveSupport::TestCase
  def setup
    @klass = AOC2022::Answers::Day6
  end

  test 'test_1' do
    assert_equal 1480, @klass.ans_1
  end

  test 'test_2' do
    assert_equal 2746, @klass.ans_2
  end
end
