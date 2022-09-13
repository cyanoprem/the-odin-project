# rubocop: disable all
# Require YAML 
require 'yaml'

# Class person 
class Person
  
  # This enables us to read and write name and place variables 
  attr_accessor :name, :place
  
  # To initialize an class instance 
  def initialize(name, place)
    @name = name
    @place =place
  end

  # The method saves the name and place details of the person instance as yml file
  def save_person_file
    File.open("#{@name}.yml", "w") do |file|
      file.puts YAML.dump ({
        :name => @name,
        :place => @place
      })
    end
  end

# This method prints the details of the person instance
  def print_details
    puts "You are #{name} and you live at #{place}"
  end

# This method read the existing person's file and intiates a new instance
  def self.read_person_file(file)
    data = YAML.load_file(file)
    p data
    self.new(data[:name], data[:place])
  end

  # This method gets call if the person file already exists in the folder
  def self.person_exist(name)
    puts "Your information is saved already."
    self.read_person_file("#{name}.yml")
  end

end

# Get the person's name
print "Enter you name: "
name = gets.chomp


if File.exists?("#{name}.yml")
  person = Person.person_exist(name)
else
  print "Where do you live? "
  place = gets.chomp
  person = Person.new(name, place)
  person.save_person_file
end

person.print_details
