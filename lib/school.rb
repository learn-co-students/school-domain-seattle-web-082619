# code here!
class School
    attr_reader :name
    attr_accessor :roster 

    def initialize(name)
    @name = name 
    @roster = {}
    end 

    #initialized with name and roster in the start

    def add_student (name, grade)
    
    @roster[@grade]=[]
    @roster[@grade]<<@name

    end 
    
    #grade then [name] 




end 