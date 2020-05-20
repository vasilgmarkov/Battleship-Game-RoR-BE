# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_a = User.create(name: "Vasil", email: "1@1.com", password_digest: "1234")
user_b = User.create(name: "Rawl", email: "2@1.com", password_digest: "1234")
user_c = User.create(name: "Alex", email: "3@1.com", password_digest: "1234")
user_d = User.create(name: "Lluis", email: "4@1.com", password_digest: "1234")

game_a = Game.create()
game_b = Game.create()
game_c = Game.create()
game_d = Game.create()

gamePlayer_a1 = GamePlayer.create(user: user_a,game: game_a);
gamePlayer_b1 = GamePlayer.create(user: user_b, game: game_a);

ship_a_gp_a1 = Ship.create(ship_type:"Patrol Boad", locations: "A1,A2",game_player: gamePlayer_a1)

salvo_a_gp_a1 = Salvo.create(turn:1, locations: "C1,B2", game_player: gamePlayer_a1)
salvo_b_gp_a1 = Salvo.create(turn:1, locations: "D1,B1", game_player: gamePlayer_a1)
salvo_c_gp_a1 = Salvo.create(turn:1, locations: "C2,G2", game_player: gamePlayer_a1)

score_a_u_a = Score.create(points:1.0, user:user_a, game:game_a);
score_a_u_b = Score.create(points:0.0, user:user_b, game:game_a);
score_b_u_a = Score.create(points:1.0, user:user_b, game:game_b);
score_b_u_b = Score.create(points:0.0, user:user_a, game:game_b);
score_c_u_a = Score.create(points:0.5, user:user_b, game:game_c);
score_c_u_b = Score.create(points:0.5, user:user_a, game:game_c);
score_d_u_a = Score.create(points:0.5, user:user_b, game:game_d);
score_d_u_b = Score.create(points:0.5, user:user_d, game:game_d);




