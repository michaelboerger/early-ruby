# require_relative "people"
# require_relative "plum"

class Person
    attr_accessor :name
    attr_accessor :has_plum

    def initialize(name)
        @name = name
        @has_plum = false
    end

    def display
        if @has_plum
            return "PLUM"
        end
          return "o<{:{o> ho ho ho"
    end
end


class Plum

   def initialize()
       @people = [
            Person.new("MIKE"),
            Person.new("CHRIS")
        ]
   end

   def select_dude()
       cycles = 100
       @people[0].has_plum = true
       pass_plum = false
       cycles.times do |cycle|
           @people.each do |person|
               if pass_plum
                   person.has_plum = true
                   pass_plum = false
               elsif person.has_plum
                   person.has_plum = false
                   pass_plum = true
               end

               puts person.display
           end
       end
   end
end

plum = Plum.new
plum.select_dude
