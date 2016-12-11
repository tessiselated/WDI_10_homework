require "pry"
require_relative "./animal.rb"
require_relative "./client.rb"

class Shelter

  attr_reader :name, :animals, :clients

  def initialize (name)
    @name = name
    @animals = []
    @clients = []

  end

  def add_animal (name, age, species)
    pet_instance = Animal.new(name, age, species)
    @animals.push(pet_instance)
  end

  def accept_pet
    #determing which client pet is from
    #remove pet from client array
    #push pet to shelter animals array

  end

  def adopt_pet_out
     #determining which animal is being adopted out
     #remove pet from shelter animal array
     #add animal to client pet array

  end

end

binding.pry
