class AOC2022::Answers::Day4
  class << self
    def data
      read_file(4)
        .split("\n")
        .map { |s| s.split(",") }
        .map { |(a, b)| [a.split("-").map(&:to_i), b.split("-").map(&:to_i)] }
    end

    def ans_1
      data.select do |((s1, e1), (s2, e2))|
        range_a = s1..e1
        range_b = s2..e2
        range_a.cover?(range_b) || range_b.cover?(range_a)
      end.size
    end

    def ans_2
      data.select do |((s1, e1), (s2, e2))|
        range_a = s1..e1
        range_b = s2..e2
        range_a.overlaps?(range_b)
      end.size
    end
  end
end
