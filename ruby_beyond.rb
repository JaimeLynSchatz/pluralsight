# user has a name and an age
# class User

#   def initialize(date_of_birth)
#     days_since_birth = Date.today - Date.parse(date_of_birth)
#     @age = days_since_birth / 365
#   end

#   def can_vote?
#     @age >= 18
#   end
# end

# class User

#   def reopen_class
#     puts "I just reopened the class"
#   end
# end

# john = User.new("January 27 1977")

def yet_another_method
  puts "I'm a method"
end

def optional_first(first=1, second=2, third)
end

def other_optional(first, second, third=3)
end

def greet(name, informal: false, shout: false)
end

def odd_or_even(num)
  if num.odd?
    "odd"
  else
    "even"
  end
end

class E
end

# class E
#   def self.ping
#     if gets("Type ping to add methods > ").match("ping")
#       puts "pong"
#     else
#       puts "sorry, didn't catch that"
#     end
#   end
# end

# E.ping


a = 10
def double_a a
  a * 2
end

double_a a

a = 11

double_a a

puts a