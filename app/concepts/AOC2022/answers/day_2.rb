class AOC2022::Answers::Day2
  class << self
    def data
      read_file(2)
        .split("\n")
        .map { |l| l.split(" ") }
    end

    def play_score_map(str)
      {
        'A': 1,
        'B': 2,
        'C': 3
      }.with_indifferent_access[str]
    end

    def reverse_map(str)
      {
        'X': 'A',
        'Y': 'B',
        'Z': 'C'
      }.with_indifferent_access[str]
    end

    def resukt_score_map(str)
      {
        'X': 0,
        'Y': 3,
        'Z': 6
      }.with_indifferent_access[str]
    end

    def result_map(str)
      {
        'A': {
          'X': 'C',
          'Z': 'B'
        },
        'B': {
          'X': 'A',
          'Z': 'C'
        },
        'C': {
          'X': 'B',
          'Z': 'A'
        }
      }.with_indifferent_access[str]
    end

    def ans_1
      data.map do |opponent_play, play|
        reverse_play = reverse_map(play)
        result_score = opponent_play == reverse_play ? resukt_score_map('Y') : resukt_score_map((result_map(opponent_play).invert[reverse_play]))
        play_score_map(reverse_play) + result_score
      end.sum
    end

    def ans_2
      data.map do |opponent_play, play|
        result_score = resukt_score_map(play)
        real_play    = play == 'Y' ? opponent_play : result_map(opponent_play)[play]
        play_score_map(real_play) + result_score
      end.sum
    end
  end
end
