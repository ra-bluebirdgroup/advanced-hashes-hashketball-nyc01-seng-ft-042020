# Write your code here!
# require './hashketball.rb'


def game_hash

{:home => {
   :team_name => 'Brooklyn Nets',
   :colors => ['black', 'white'],
   :players => [
     {player_name: 'Alan Anderson', number: 0, shoe: 16, points: 22, rebounds: 12, assists: 12, steals: 3, blocks: 1, slam_dunks: 1},
     {player_name: 'Reggie Evans', number: 30, shoe: 14, points: 12, rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
     {player_name: 'Brook Lopez', number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15},
     {player_name: 'Mason Plumlee', number: 1, shoe: 19, points: 26, rebounds: 11, assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
     {player_name: 'Jason Terry', number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}
     ]
     },

     :away => {

     :team_name => 'Charlotte Hornets',
     :colors => ['turquoise', 'purple'],
     :players => [
       {player_name: 'Jeff Adrien', number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2},
       {player_name: 'Bismack Biyombo', number: 0, shoe: 16, points: 12, rebounds: 4, assists: 7, steals: 22, blocks: 15, slam_dunks: 10},
       {player_name: 'DeSagna Diop', number: 2, shoe: 14, points: 24, rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
       {player_name: 'Ben Gordon', number: 8, shoe: 15, points: 33, rebounds: 3, assists: 2, steals: 1, blocks: 1, slam_dunks: 0},
       {player_name: 'Kemba Walker', number: 33, shoe: 15, points: 6, rebounds: 12, assists: 12, steals: 7, blocks: 5, slam_dunks: 12}
       ]

     }
  }
end
# player_search = 'Kemba Walker'
# all_players = game_hash.dig(:home, :players)
# all_players += game_hash.dig(:away, :players)
#
# all_players.each do |player|
#   player.select{|player_name, name|
#     if name == player_search
#      player.select{|key, value|
#        if key.to_s == 'points'
#          puts value
#        end
#       }
#    end
#  }
#   end
def all_players
  all_players = game_hash.dig(:home, :players)
all_players += game_hash.dig(:away, :players)
end

 def num_points_scored(player_search)

   all_players.each do |player|
     player.select{|player_name, name|
       if name == player_search.to_s
        player.select{|key, value|
          if key.to_s == 'points'
            return value
          end
         }
      end
    }
     end

end

 def shoe_size(player_search)
   all_players.each do |player|
     player.select{|player_name, name|
       if name == player_search.to_s
        player.select{|key, value|
          if key.to_s == 'shoe'
            return value
          end
         }
      end
    }
     end

end

def team_colors(team_search)
  home_team = game_hash.dig(:home, :team_name)
  away_team =  game_hash.dig(:away, :team_name)

  if team_search == home_team
      colors = game_hash.dig(:home, :colors).map {|c| c.capitalize }

  elsif team_search == away_team
    game_hash.dig(:away, :colors).map {|c| c.capitalize }
    end
end

def team_names
  teams = game_hash.dig(:home, :team_name)
  teams += game_hash.dig(:away, :team_name)
   teams
   p teams
end

# def player_numbers(team_search)
  # teams << game_hash.dig(:home, :team_name)
  # teams << game_hash.dig(:away, :team_name)

  home_team = []
  away_team = []
  home_team << game_hash.dig(:home, :players)
  away_team << game_hash.dig(:away, :players)

  input = 'Brooklyn Nets'

  new_array = []

  if input == 'Brooklyn Nets'
  home_team.each do |player|
       player.select{|key, value|
         if key == :number
         new_array << value
         end
         }
      end
    end
     game_hash.dig(:home, :players).each do |player|
       puts player
     end 

 #     end
 #   }
 # end

# end

# new_array = []
# team_search = 'Kemba Walker'
#    game_hash.each{ |teams, properties|
#       properties.each{ |players, player_info|
#         if players.assoc(:number) do
#               new_array << :number
#                end
#            end
#            }
#           }
#
# puts new_array

# new_array = []
# all_players.each do |player|
#   player.select{|player_name, number|
#     if game_hash.assoc(team_search)
#      player.select{|key, value|
#        if key.to_s == 'number'
#         new_array << value
#         puts new_array
#        end
#       }
#    end
#  }
# end

#   if team == team_search.to_s
#   team.each do |players|
#
#   players.select{|key, value|
#   if  key.to_s == 'number'
#     puts value
#   end
#   }
#
# end
#
# end
#
# end


#
#     team_names.select{|player_name, name|
#       if team == team_search.to_s
#        player.select{|key, value|
#          if key.to_s == 'number'
#            p value
#          end
#         }
#      end
#    }
#     end
#
# end

#
# def player_stats
#
# end
#
# def big_shoe_rebounds
#
# end
