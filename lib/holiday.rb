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
  holiday_hash[:winter].each{|ky,vu| vu << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  # extra = {holiday_name => supply_array}
  holiday_hash[season] = {holiday_name => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  # This is a challenging deliverable!
  # Start by determining how to iterate through the holiday_hash to access all the 
  # data you need for this deliverable. Then work on getting the formatting right.
  # To capitalize the names of the holidays, you'll need to do the following:
  # - Start with a name of the holiday as a symbol (:fourth_of_july)
  # - Convert the symbol to a string ("fourth_of_july")
  # - Replace each underscore with a space ("fourth of july")
  # - Capitalize the first letter of each word ("Fourth Of July")
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  out = []
  holiday_hash.each do |ky1, vu1|
    vu1.each do |ky2, vu2|
      out << ky2 if vu2.include? "BBQ"
    end
  end
  out
end

x = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

columbus_day_supplies = ["Flags", "Parade Floats", "Italian Food"]

y = add_new_holiday_with_supplies(x, :fall, :columbus_day, columbus_day_supplies)

# binding.pry

columbus_day_supplies = ["Flags", "Parade Floats", "Italian Food"]
c = columbus_day_supplies


