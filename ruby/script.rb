require 'pry-byebug'

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split

  binding.pry

  unique_length = string_array.uniq.length

  original_length == unique_length
end

isogram?('Odin')


# Try running the file with just rspec, not bundle exec rspec. If you want to use bundle exec you will need to add pry-byebug to the gemfile in the exercises repo - it's possible this is something we need to fix / update.
