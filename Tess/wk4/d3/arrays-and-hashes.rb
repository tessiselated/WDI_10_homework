require "pry"

a = ["Anil", "Erik", "Jonathan"]

# How would you return the string "Erik"?

return_erik = a[1]

# How would you add your name to the array?

a.push("Tess")


h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# How would you return the string "One"?

return_one = h[1]

# How would you return the string "Two"?

return_two = h[:two]

# How would you return the number 2?

return_number_2 = h["two"]

# How would you add {3 => "Three"} to the hash?

h[3] = "Three"

# How would you add {:four => 4} to the hash?

h[:four] = 4




is = {true => "It's true!", false => "It's false"}

# What is the return value of is[2 + 2 == 4]

"The return value would be \"It's true!\""

@check_my_prediction = is[2 + 2 == 4]
puts @check_my_prediction

# What is the return value of is["Erik" == "Jonathan"]?

"The return value would be \"It's false!\""

# What is the return value of is[9 > 10]?

"The return value would be \"It's false!\""

# What is the return value of is[0]?

"The return value would be nil"


# What is the return value of is["Erik"]?

"The return value would be nil"

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

# How would you access Jonathan's Twitter handle (i.e. the string "tronathan")?

jonathan_twitter = users["Jonathan"][:twitter]

# How would you add the number 7 to Erik's favorite numbers?

users["Erik"][:favorite_numbers].push(7)

# How would you add yourself to the users hash?

users["Tess"] = {
  :twitter => "tessiselated",
  :favorite_numbers => [16, 8, 42]
}

# How would you return the array of Erik's favorite numbers?

eriks_favourite_numbers = users["Erik"][:favorite_numbers]

# How would you return the smallest of Erik's favorite numbers?

lowest_number = eriks_favourite_numbers.sort[0]

# How would you return an array of Anil's favorite numbers that are also even?

anil_even = []

users["Anil"][:favorite_numbers].each do |number|
  if number % 2 == 0
    anil_even.push(number)
  end
end

# How would you return an array of the favorite numbers common to all users?

numbers_in_common = users["Jonathan"][:favorite_numbers] & users["Erik"][:favorite_numbers] & users["Anil"][:favorite_numbers]

# How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?

all_numbers_sorted = ( users["Jonathan"][:favorite_numbers] | users["Erik"][:favorite_numbers] | users["Anil"][:favorite_numbers] | users["Tess"][:favorite_numbers] ).sort

binding.pry
