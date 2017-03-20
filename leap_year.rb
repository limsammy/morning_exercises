require 'pry'

class LeapYear

  def predict(number_of_leaps)
    start_year = 2017
    end_year = 3000
    leaps = []

    (start_year..end_year).each do |year|
      if year % 400 == 0 || (year % 100 != 0 && year % 4 ==0 )
        leaps << year
      end
    end
    

    if leaps.size != number_of_leaps
      leaps = leaps[0..24]
    end
    p leaps
  end
end

leap = LeapYear.new
leap.predict(25)