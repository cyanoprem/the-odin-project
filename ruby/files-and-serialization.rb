
# YAML

require 'yaml'

class Person
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def to_yaml
    YAML.dump ({
      :name => @name,
      :age => @age,
      :gender => @gender
    })
  end

  def self.from_yaml(string)
    data = YAML.load string
    p data
    self.new(data[:name], data[:age], data[:gender])
  end
end

p = Person.new "David", 28, "male"
# p p
p p.to_yaml

p = Person.from_yaml(p.to_yaml)
# p p
puts "Name #{p.name}"
puts "Age #{p.age}"
puts "Gender #{p.gender}"

# JSON
require 'json'

class Person
  ...
  def to_json
    JSON.dump ({
      :name => @name,
      :age => @age,
      :gender => @gender
    })
  end

  def self.from_json(string)
    data = JSON.load string
    self.new(data['name'], data['age'], data['gender'])
  end
  ...
end

# Difference between JSON and YAML
# JSON
{
    "name": "David",
    "height": 124,
    "age": 28,
    "children": {"John": {"age": 1, "height": 10},
               "Adam": {"age": 2, "height": 20},
               "Robert": {"age": 3, "height": 30}},
    "traits": ["smart", "nice", "caring"]
  }

#   YAML
require 'json'
JSON.load File.read("test.json")

{"name"=>"David",
 "height"=>124,
 "age"=>28,
 "children"=>{"John"=>{"age"=>1, "height"=>10},
             "Adam"=>{"age"=>2, "height"=>20},
             "Robert"=>{"age"=>3, "height"=>30}},
 "traits"=>["smart", "nice", "caring"]}

 # Modularizing with Mixins

 require 'json'

#  Mixins - https://www.sitepoint.com/choosing-right-serialization-format/

module BasicSerializable
  #should point to a class; change to a different
  #class (e.g. MessagePack, JSON, YAML) to get a different
  #serialization

  @@serilizer = JSON

  def serilizer
    obj = {}
    instance_variable.map do |var|
      obj[var] = instance_variable_get(var)
    end

    @@serilizer.dump obj
  end
  
  def unserialize(string)
    obj = @@serializer.parse(string)
    obj.keys.each do |key|
      instance_variable_set(key, obj[key])
    end
  end
end

class Person
  include BasicSerializable
  
    attr_accessor :name, :age, :gender
  
    def initialize(name, age, gender)
      @name = name
      @age = age
      @gender = gender
    end
end

p = Person.new "David", 28, "male"
p p.serialize

p.unserialize (p.serialize)
puts "Name #{p.name}"
puts "Age #{p.age}"
puts "Gender #{p.gender}"

# The above method will not work for objects instances
# Override to fix this

class People
  include BasicSerializable

  attr_accessor :persons

  def initialize
    @persons = []
  end

  def serialize
    obj = @persons.map do |person|
      person.serialize
    end

    @@serializer.dump obj
  end

  def unserialize(string)
    obj = @@serializer.parse string
    @persons = []
    obj.each do |person_string|
      person = Person.new "", 0, ""
      person.unserialize(person_string)
      @persons << person
    end
  end

  def <<(person)
    @persons << person
  end
end


# Writing to a local file from a webpage

require 'rubygems'
require 'rest-client'

wiki_url = "http://en.wikipedia.org/"
wiki_local_filename = "wiki-page.html"

File.open(wiki_local_filename, "w") do |file|
   file.write(RestClient.get(wiki_url))
end