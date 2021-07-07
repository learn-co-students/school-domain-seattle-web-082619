# code here!
class School
  attr_reader :name
  attr_accessor :roster 

  def initialize(name)
    @name = name 
    @roster = {}
   end 

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name  
  end 
    
  def grade(grade)
    self.roster[grade]
  end 

  def sort
    sorted = {}
    @roster.each do |grade,students|
      sorted[grade]=students.sort
    end 
    sorted 
  end 
  
end 