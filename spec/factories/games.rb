FactoryBot.define do
  factory :game do
    state { "MyString" }
    turn { "MyString" }
    fen { "MyString" }
    pgn { "MyString" }
    white_player_id { 1 }
    black_player_id { 1 }
  end
end
