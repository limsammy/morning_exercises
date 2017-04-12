require 'pry'

class Schedule
  attr_reader :teams

  def initialize
    @teams = Array.new(8){ |i| "Team #{i}".to_s }
  end

  def get_team
    teams.shuffle.first
  end

  def get_team2
    teams.shuffle.first
  end

  def play
    teams.each do |team|
      if get_team == get_team2
        puts "Teams are the same."
      elsif get_team = get_team2
        puts "#{get_team} played #{get_team2}!"
      end
    end
  end
end

s = Schedule.new
s.play