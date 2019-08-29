require "pry"

class School
    attr_accessor :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student, grade)
        @roster[grade] ? @roster[grade].push(student) : @roster[grade] = [student]
    end

    def grade(grade)
        roster[grade]
    end

    def sort 
        roster.map { |g, s| s.sort! }
        roster
    end

    # binding.pry
end