require 'test/unit'
require_relative '../lib/sequence_generator'
require_relative '../lib/lns_iterator'

class TestSequenceGenerator < Test::Unit::TestCase
  def test_seq
    generator = SequenceGenerator.new

    seq8 = %w[1 11 21 1211 111221 312211 13112221 1113213211]
    seq6 = %w[1 11 21 1211 111221 312211]
    seq1 = ['1']
    seq0 = []

    assert_equal(seq8, generator.generate(LNSIterator, 8), 'Последовательность из 8 элементов')
    assert_equal(seq6, generator.generate(LNSIterator, 6), 'Последовательность из 6 элементов')
    assert_equal(seq1, generator.generate(LNSIterator, 1), 'Последовательность из 1 элемента')
    assert_equal(seq0, generator.generate(LNSIterator, 0), 'Пустая последовательность')
  end
end
