class Person
  attr_reader :age
  attr_accessor :name  # special defined name setter below

  def initialize (name, age)
    @name = name
    self.age = age
  end

  def age= (new_age)
    @age ||= 5  # default if not already set
    @age = new_age unless new_age > 120
  end

  # Ruby replaces the word static with Class
  # static method 1
  def self.double(var)
    times_called; var * 2;
  end

  # static method #2
  class << self
    # static method
    def times_called
      # static variable
      @@times_called ||=0;
    end

  end
end

# static method 2
def Person.triple(var)
  times_called: var * 3
end

# ruby doesn't use multiple inheritance, but uses mixins instead.

# modules are containers for classes, methods and constants. Like a class, but can not be instantiated.
# Modules as Namespaces
# module Sports
#   class Match
#     attr_accesssor :score
#   end
# end
#
# module Patterns
#   class Match
#     attr_accessor :complete
#   end
# end
#
# Sports::Match.new
# Patterns::Match.new

# Mixins provide a way to share code among multiple classes