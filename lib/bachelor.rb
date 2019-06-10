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
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
