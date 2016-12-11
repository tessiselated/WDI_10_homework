require "pry"
require_relative "./animal.rb"


class Client


attr_reader :name, :children, :age, :pets

def initialize(name, children, age)
  @name = name
  @children = children
  @age = age
  @pets = []
end

def add_pet (name, age, species)
  pet_instance = Animal.new(name, age, species)
  @pets.push(pet_instance)
end






end

binding.pry
