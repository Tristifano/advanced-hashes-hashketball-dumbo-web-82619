require "pry"
def game_hash
  hash = {
    :home => {
          :team_name => "Brooklyn Nets",
          :colors => ["Black","White"],
          :players => [ 
            "Alan Anderson" => {
                                      :number => 0,
                                      :shoe => 16,
                                      :points => 22,
                                      :rebounds => 12,
                                      :assists => 12,
                                      :steals => 3,
                                      :blocks => 1,
                                      :slam_dunks => 1 
                            },
            "Reggie Evans" => {
                                      :number => 30,
                                      :shoe => 14,
                                      :points => 12,
                                      :rebounds => 12,
                                      :assists => 12,
                                      :steals => 12,
                                      :blocks => 12,
                                      :slam_dunks => 7        
            },
            "Brook Lopez" => {
                                      :number => 11,
                                      :shoe => 17,
                                      :points => 17,
                                      :rebounds => 19,
                                      :assists => 10,
                                      :steals => 3,
                                      :blocks => 1,
                                      :slam_dunks => 15 
            },
            "Mason Plumlee" => {
                                      :number => 1,
                                      :shoe => 19,
                                      :points => 26,
                                      :rebounds => 11,
                                      :assists => 6,
                                      :steals => 3,
                                      :blocks => 8,
                                      :slam_dunks => 5 
            },
            "Jason Terry" => {
                                      :number => 31,
                                      :shoe => 15,
                                      :points => 19,
                                      :rebounds => 2,
                                      :assists => 2,
                                      :steals => 4,
                                      :blocks => 11,
                                      :slam_dunks => 1 
            }]
            
            
                                        
          },
    :away => {
          :team_name => "Charlotte Hornets",
          :colors => ["Turquoise", "Purple"],
          :players => [
            "Jeff Adrien" => {
                                      :number => 4,
                                      :shoe => 18,
                                      :points => 10,
                                      :rebounds => 1,
                                      :assists => 1,
                                      :steals => 2,
                                      :blocks => 7,
                                      :slam_dunks => 2 
                            },
            "Bismack Biyombo" => {
                                      :number => 0,
                                      :shoe => 16,
                                      :points => 12,
                                      :rebounds => 4,
                                      :assists => 7,
                                      :steals => 22,
                                      :blocks => 15,
                                      :slam_dunks => 10 
                            },
            "DeSagna Diop" => {
                                      :number => 2,
                                      :shoe => 14,
                                      :points => 24,
                                      :rebounds => 12,
                                      :assists => 12,
                                      :steals => 4,
                                      :blocks => 5,
                                      :slam_dunks => 5 
                            },
            "Ben Gordon" => {
                                      :number => 8,
                                      :shoe => 15,
                                      :points => 33,
                                      :rebounds => 3,
                                      :assists => 2,
                                      :steals => 1,
                                      :blocks => 1,
                                      :slam_dunks => 0 
                            },
            "Kemba Walker" => {
                                      :number => 33,
                                      :shoe => 15,
                                      :points => 6,
                                      :rebounds => 12,
                                      :assists => 12,
                                      :steals => 7,
                                      :blocks => 5,
                                      :slam_dunks => 12 
            }]         
          
          
    }
          
  } 
    
  hash 
end


def num_points_scored(player_name)
  game_hash[:home][:players].each {|player_array|
    player_array.each {|player,stats|
    if player == player_name
      return stats[:points]
    end
    }
  }
  game_hash[:away][:players].each {|player_array|
    player_array.each {|player,stats|
    if player == player_name
      return stats[:points]
    end
    }
  }
end

def shoe_size(player_name)
  game_hash[:home][:players].each {|player_array|
    player_array.each {|player,stats|
    if player == player_name
      return stats[:shoe]
    end
    }
  }
  game_hash[:away][:players].each {|player_array|
    player_array.each {|player,stats|
    if player == player_name
      return stats[:shoe]
    end
    }
  }
end

def team_colors(team)
  if game_hash[:home][:team_name] == team
    return game_hash[:home][:colors]
  elsif game_hash[:away][:team_name] == team
    return  game_hash[:away][:colors]
  end
end

def team_names
  team_array = []
  team_array.push(game_hash[:home][:team_name])
  team_array.push(game_hash[:away][:team_name])
  team_array
end

def player_numbers(team)
  jersey_array = []
    if game_hash[:home][:team_name] == team
      game_hash[:home][:players].each {|player_array|
        player_array.each {|player,stats|
          jersey_array.push(stats[:number])
        }
      }
    elsif game_hash[:away][:team_name] 
      game_hash[:away][:players].each {|player_array|
        player_array.each {|player,stats|
          jersey_array.push(stats[:number])
        }
      }
    end
  jersey_array
end

def player_stats(name)
  game_hash[:home][:players].each {|player_array|
    player_array.each {|player,stats|
    if player == name
      return stats
    end
    }
  }
  game_hash[:away][:players].each {|player_array|
    player_array.each {|player,stats|
    if player == name
      return stats
    end
    }
  }
end

def big_shoe_rebounds
  biggest_shoe = 0
  player_name = ""
  game_hash[:home][:players].each {|player_array|
    player_array.each {|player,stats|
      if stats[:shoe] > biggest_shoe
      biggest_shoe = stats[:shoe]
      player_name = player
      end
    }
  }
  game_hash[:away][:players].each {|player_array|
    player_array.each {|player,stats|
      if stats[:shoe] > biggest_shoe
      biggest_shoe = stats[:shoe]
      player_name = player
      end
    }
  }
   game_hash[:home][:players].each {|player_array|
    player_array.each {|player,stats|
    if player == player_name
      return stats[:rebounds]
    end
    }
  }
  game_hash[:away][:players].each {|player_array|
    player_array.each {|player,stats|
    if player == player_name
      return stats[:rebounds]
    end
    }
  }
end

def most_points_scored
  most_points = 0
  player_name = ""
  game_hash[:home][:players].each {|player_array|
    player_array.each {|player,stats|
      if stats[:points] > most_points
      most_points = stats[:points]
      player_name = player
      end
    }
  }
  game_hash[:away][:players].each {|player_array|
    player_array.each {|player,stats|
      if stats[:points] > most_points
      most_points = stats[:points]
      player_name = player
      end
    }
  }
  player_name
end

def winning_team
  home_score = 0
  away_score = 0
   game_hash[:home][:players].each {|player_array|
    player_array.each {|player,stats|
      home_score += stats[:points]
    }
  }
  game_hash[:away][:players].each {|player_array|
    player_array.each {|player,stats|
      away_score += stats[:points]
    }
  }
  home_score > away_score ? game_hash[:home][:team_name] : game_hash[:away][:team_name] 
end

def player_with_longest_name
  name_count = 0
  longest_player_name = ""
  game_hash[:home][:players].each {|player_array|
    player_array.each {|player,stats|
      if player.length > name_count
      name_count = player.length
      longest_player_name = player
      end
    }
  }
  game_hash[:away][:players].each {|player_array|
    player_array.each {|player,stats|
       if player.length > name_count
      name_count = player.length
      longest_player_name = player
      end
    }
  }
  longest_player_name
end


def long_name_steals_a_ton?
  highest_steals = 0
  longest_steals = 0
  name_count = 0
  longest_player_name = ""
  game_hash[:home][:players].each {|player_array|
    player_array.each {|player,stats|
      if player.length > name_count
      name_count = player.length
      longest_player_name = player
      longest_steals = stats[:steals]
      end
    }
  }
  game_hash[:away][:players].each {|player_array|
    player_array.each {|player,stats|
       if player.length > name_count
      name_count = player.length
      longest_player_name = player
      longest_steals = stats[:steals]
      end
    }
  }
  game_hash[:home][:players].each {|player_array|
    player_array.each {|player,stats
    |
      if stats[:steals] > highest_steals
      highest_steals = stats[:steals]
      longest_player_name = player
      end
    }
  }
  game_hash[:away][:players].each {|player_array|
    player_array.each {|player,stats|
       if player.length > name_count
      name_count = player.length
      longest_player_name = player
      end
    }
  }
  longest_steals > highest_steals ? true : false
end

