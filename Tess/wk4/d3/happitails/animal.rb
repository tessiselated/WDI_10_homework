require "pry"

class Animal

  attr_reader :name, :age, :sex, :species, :toys

  def initialize (name, age, species)
    @name = name
    @age = age
    @species = species
    @toys = []
  end

  def set_sex (sex)
    if sex == "M" or "F" or "unknown"
      @sex = sex
    else
      puts "Please check your input and try again. Accepted inputs are M, F or unknown."
    end
  end

  def add_toy

    loop do
      break if more_toys == "N"
      puts "Add the toy name"
      toy = gets.chomp
      @toys.push(toy)
      puts "Type N to stop adding toys"
      more_toys = gets.chomp
    end
  end









end

  binding.pry
