require "binding"

def get_first_name_of_season_winner(data, season)
  winner_name = ""
  data.each do |s, s_data|
    if s == season
      s_data.each do |person|
        if person["status"] == "Winner"
          winner_name = person["name"]
          return winner_name.split(" ")[0]
        end
      end
    end
  end

end

def get_contestant_name(data, occupation)
  data.each do |s, s_data|
      s_data.each do |person|
        if person["occupation"] == occupation
          return person["name"]
        end #end if
      end #s_data.each
    end #data.each
end #def


def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |s, s_data|
      s_data.each do |person|
        if person["hometown"] == hometown
          counter += 1
        end #end if
      end #s_data.each
    end #data.each
    return counter
end

def get_occupation(data, hometown)
  data.each do |s, s_data|
      s_data.each do |person|
        if person["hometown"] == hometown
          return person["occupation"]
        end #end if
      end #s_data.each
    end #data.each
end

def get_average_age_for_season(data, season)
  cont_amount = 0
  total_age = 0
  data.each do |s, s_data|
    if s == season
      s_data.each do |person|

          cont_amount += 1
          total_age += person[:age].to_f
          binding.pry
      end

    end
  end
  return total_age/cont_amount
end
