class AOC2022::Answers::Day1
  class << self
    def data
      read_file(1)
        .split("\n\n")
        .map { |l| l.split("\n") }
        .map { |data| data.map(&:to_i) }
    end

    def ans_1
      data.map(&:sum).max
    end

    def ans_2
      data.map(&:sum).max(3).sum
    end
  end
end
