require 'pry'

class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(student_name, student_grade)

    if !!@roster[student_grade]
      @roster[student_grade] << student_name

    else
      @roster[student_grade] = []
      @roster[student_grade] << student_name
    end
  end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    @roster.each do |grade, name_arr|
      name_arr.sort!
    end
  end


end
