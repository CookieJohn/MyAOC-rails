class AOC2022::Answers::Day6
  class << self
    def data
      read_file(6)
    end

    def find_marker_idx(str, start, size)
      end_char_idx = start + size - 1
      until str[start..end_char_idx].chars.uniq.size == size
        start        += 1
        end_char_idx += 1
      end
      end_char_idx + 1
    end

    def ans_1
      find_marker_idx(data, 0, 4)
    end

    def ans_2
      find_marker_idx(data, 0, 14)
    end
  end
end
