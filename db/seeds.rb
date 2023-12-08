User.create!(email: 'player1@test.ru',
             password: '11111111',
             password_confirmation: '11111111')

User.create!(email: 'player2@test.ru',
             password: '11111111',
             password_confirmation: '11111111')

User.create!(email: 'player3@test.ru',
             password: '11111111',
             password_confirmation: '11111111')


User.create!(email: 'player4@test.ru',
             password: '11111111',
             password_confirmation: '11111111')

10.times { |_|
  User.create!(email: Faker::Internet.email,
               password: 'password',
               password_confirmation: 'password')
}
