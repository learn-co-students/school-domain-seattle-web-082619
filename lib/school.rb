require 'pry'

class School
    attr_accessor = :name
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster()
        @roster
    end

    def roster=(roster)
        @roster = roster
    end

    def grade(num)
        @roster[num]
    end

    def sort()
        @roster.each do |key, val|
            val.sort!
        end
        
        @roster
    end

    def add_student(name, age)
        if !@roster[age]
            @roster[age] = []
            @roster[age].push(name)
        else
            @roster[age].push(name)
        end
    end
end
