require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end
#flatten : Returns a new array that is a one-dimensional flattening of self (recursively). That is, for every element that is an array, extract its elements into the new array.
#values: Returns a new array populated with the values from hsh.

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"

    holidays.each do |holiday, items|
      holiday_string_split = holiday.to_s.split("_").collect do |word|
        words = word.capitalize!

      end.join(" ")

      puts "  #{holiday_string_split}: #{items.join(", ")}"

    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  BBQ_holidays == []

  holiday_hash.each do |seasons, holidays|        #go through the holiday_hash's list of seasons (key), whichh has the values od holidays
    holidays.each do |holidays, supply|            #now go through each holiday and go throught its supply
      if supply.include? ("BBQ")                  #check if any of the supply list includes "BBQ"
        BBQ_holidays << holiday                    #if it does, place those holiday names in the empty BBQ_holidays array
        BBQ_holidays.flatten
      end
    end
  end
  BBQ_holidays
end
