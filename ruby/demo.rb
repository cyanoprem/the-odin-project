# scope.rb

# a = 5             # variable is initialized in the outer scope

# 3.times do |n|    # method invocation with a block
#   a = 3           # is a accessible here, in an inner scope?
#   b = 5
# end

# puts a
# puts b

#name.rb
# puts "What is your first name?"
# first_name = gets.chomp
# puts "What is your second name?"
# second_name = gets.chomp
# puts "Hello #{first_name} #{second_name}"

# age.rb

# puts "How old are you?"
# age = gets.chomp
# puts "In 10 years you will be: #{age.to_i + 10}" 
# puts "In 20 years you will be: #{age.to_i + 20}"
# puts "In 30 years you will be: #{age.to_i + 30}"  


# x = 0
# 3.times do
#   x += 1
# end
# puts x


# y = 0
# 3.times do
#   y += 1
#   x = y
# end
# puts x

# firstName = "cyano"
# name = firstName
# # puts name.upcase
# # puts firstName

# per = "CYANO"
# puts per.upcase

# print "Learning to code is FUN!"


# if per == "CYANO"
#     puts "Yesss"
# end

# puts "Yooo" if 1 < 2

# attack_by_sea = true
# attack_by_land = ""

# if attack_by_land == true
#     puts "release the goat"
# elsif attack_by_sea == true
#     puts "release the shark"
# else
#     puts "release Kevin the octopus"
# end

# puts 5.eql?(5.0)

# grade = "F"

# did_i_pass = case grade
#     when "A" then "Hell yeah!"
#     when "D" then "Dont tell mom."
#     else "Not pass"
# end

# puts did_i_pass

# grade = 'F'

# case grade
# when 'A'
#   puts "You're a genius"
#   future_bank_account_balance = 5_000_000
# when 'D'
#   puts "Better luck next time"
#   can_i_retire_soon = false
# else
#   puts "'YOU SHALL NOT PASS!' -Gandalf"
#   fml = true
# end


# age = 19
# puts "Welcome to a life of debt." unless age < 18

# unless age < 18
#   puts "Down with that sort of thing."
# else
#   puts "Careful now!"
# end

# age = 19
# response = age < 18 ? "You still have your entire life ahead of you." : "You're all grown up."
# puts response #=> "You're all grown up."

# Order of percedence
# <=, <, >, >= - Comparison
# ==, != - Equality
# && - Logical AND
# || - Logical OR




# ------ Loops --------------

# Loop

# i = 0
# loop do
#     puts "i is #{i}"
#     i += 1
#     break if i == 10
# end

(1..5)

# For loop

# for i in 0..5
#     puts "#{i} zombies incoming"
# end

# Times Loop

# 5.times do
#     puts "Hi"
# end

# 5.times do |number|
#     puts "Fact no #{number}"
# end

# Upto and Downto Loop

# 5.upto(10) {|num| print "#{num}"}

# 10.downto(5) {|num| puts "#{num}"}


# ---------- Array -------------

# 2 ways to Create
#  array = [1, "Abc", 2, "Cyano"]
#  puts array[0] # => Array index

#  Array.new(3,7) # => [7, 7, 7]

# arr = [1, 3, 5, 7, 9, 11]
# number = 3

# puts arr.include?(number)

# arr = ["b", "a"]
# arr = arr.product([Array(1..3)])
# arr.first.delete(arr.first.last)
# p arr

# arr = [["test", "hello", "world"],["example", "mem"]]

# puts arr[1][0]

# arr = [15, 7, 18, 5, 12, 8, 5, 1]

# puts arr.index(5)

# # puts arr.index[5]

# puts arr[5]

# string = "Welcome to America!"
# puts string[6]
# puts string[11]
# puts string[19]

arr = [15, 7, 18, 5, 12, 8, 5, 1]

p arr.map { |e| e + 2}
p arr


