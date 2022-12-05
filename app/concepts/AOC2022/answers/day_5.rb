class AOC2022::Answers::Day5
  class << self
    def data
      read_file(5)
        .split("\n")
        .map { |str| str.split(" ") }
    end

    def init_map 
      {
        '1' => %w[Z P M H R],
        '2' => %w[P C J B],
        '3' => %w[S N H G L C D],
        '4' => %w[F T M D Q S R L],
        '5' => %w[F S P Q B T Z M],
        '6' => %w[T F S Z B G],
        '7' => %w[N R V],
        '8' => %w[P G L T D V C M],
        '9' => %w[W Q N J F M L]
      }
    end

    def move(map, times, from, to, reverse: false)
      from_coll   = map[from]
      to_coll     = map[to]
      moved_items = from_coll.last(times.to_i)
      map[from]   = from_coll.take(from_coll.size - times.to_i)
      map[to]     = to_coll + (reverse ? moved_items.reverse : moved_items)
    end

    def ans_1
      data.each_with_object(init_map) do |(_, times, _, from, _, to), current_map|
        move(current_map, times, from, to, reverse: true)
      end.values.map(&:last).join
    end

    def ans_2
      data.each_with_object(init_map) do |(_, times, _, from, _, to), current_map|
        move(current_map, times, from, to)
      end.values.map(&:last).join
    end
  end
end
