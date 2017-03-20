require 'pry'

class LeapYear

  def predict(leap_years)
    start_year = 2017
    leap_count = 0
    years = []

    while leap_count < leap_years do
      leap_years.times do |year|
        year += start_year

        if year % 4 == 0
          leap_count += 1
          years << year
          # puts "#{year} is a leap year!"
        elsif year % 400 == 0
          leap_count += 1
          years << year
          # puts "#{year} is a leap year!"
        end
      end
    end
    puts years.size
  end

end

leap = LeapYear.new
leap.predict(25)