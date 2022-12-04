class AOC2022::Answers::Day3
  class << self
    def data
      read_file(3)
        .split("\n")
    end

    def count_score(str)
      compare_str = 'a'
      for num in (1..26).to_a
        if str.downcase == compare_str
          return str == str.upcase ? num += 26 : num
        end
        compare_str = compare_str.next
      end
    end

    def find_same_char(*strs)
      strs.map(&:chars).reduce(:&).join
    end

    def ans_1
      data.map do |str|
        partition_size = str.size / 2
        part1 = str[0..(partition_size -1)]
        part2 = str[partition_size..-1]
        word  = find_same_char(part1, part2)
        count_score(word)
      end.sum
    end

    def ans_2
      data.each_slice(3).map do |(a, b, c)|
        word  = find_same_char(a, b, c)
        count_score(word)
      end.sum
    end
  end
end
