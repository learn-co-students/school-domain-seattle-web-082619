# code here!


class School
    attr_reader :name
    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster[grade] 
            @roster[grade] = [name]
            #create an array if they key doesnt exist
        else
            roster[grade] << name
        end
    end

    def grade(student_grade)
        @roster[student_grade]
    end

    def sort
        #iterate over the key/value pairs in roster
        @roster.each do |grade, student_array| 
        #sort each array
        @roster[grade] = student_array.sort
        end
    end

end