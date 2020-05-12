# code here!
class School
    attr_accessor :roster 
    def initialize(roster)
        roster = {}
        @roster = roster 
    end 
    
    def add_student(student, grade)
        @student = student 
        @grade = grade 
        if @roster.include?(grade) == false 
            @roster[grade] = []
        end 
        @roster[grade] << student 
    end 

    def grade(grade)
        @grade = grade 
        if @roster.include?(grade) == true 
            return @roster[grade] 
        end 
    end
    
    def sort
       @roster.each do |grade, name| 
        @roster[grade] = name.sort 
       end 
    end 
end 