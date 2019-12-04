# Add your code here
require 'pry'
class Dog

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
  #  @@all << self   [we changed this method by creating save method]
    save
  end

  def self.all
    @@all
  end

  def self.clear_all
    @@all.clear

  end

  def self.print_all
    @@all.each do |dog|
      # binding.pry
      puts dog.name
    end
  end

  def save
    @@all << self
  end
end
