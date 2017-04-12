require 'pry'

class TextScanner
  attr_reader :file

  def initialize(file=nil)
    @file = file
  end

  def word_count(file=@file)
    keys = read(file).chars.uniq
    counts = Hash.new(0)
    read(file).chars.each do |char|
      counts[char] += 1
    end
    frequency = counts.values
    Hash(keys.zip(frequency))
    binding.pry
  end

  def read(file=@file)
    file = File.open(file, "r").read
    file = file.chomp.gsub("\n", "").downcase
  end
end