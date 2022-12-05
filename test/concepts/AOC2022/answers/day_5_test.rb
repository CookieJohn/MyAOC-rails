require 'test_helper'

class Day5Test < ActiveSupport::TestCase
  def setup
    @klass = AOC2022::Answers::Day5
  end

  test 'test_1' do
    assert_equal 'VQZNJMWTR', @klass.ans_1
  end

  test 'test_2' do
    assert_equal 'NLCDCLVMQ', @klass.ans_2
  end
end
