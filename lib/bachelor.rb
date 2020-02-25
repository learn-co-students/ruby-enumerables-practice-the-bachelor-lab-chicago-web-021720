def get_first_name_of_season_winner(data, season)
  winner = data[season].find {|contestant| contestant["status"] == "Winner"}
  winner["name"].split(" ")[0]
end

def get_contestant_name(data, occupation)
  all_contestants = get_all_contestants(data)
  contestant = all_contestants.find {|c| c["occupation"] == occupation}
  contestant["name"]
end

def count_contestants_by_hometown(data, hometown)
  all_contestants = get_all_contestants(data)
  all_contestants.count {|c| c["hometown"] == hometown}
end

def get_occupation(data, hometown)
  all_contestants = get_all_contestants(data)
  contestant = all_contestants.find {|c| c["hometown"] == hometown}
  contestant["occupation"]
end

def get_average_age_for_season(data, season)
  ages = data[season].collect {|c| c["age"].to_f}
  (ages.sum / ages.length).round
end

def get_all_contestants(data)
  data.values.flatten
end