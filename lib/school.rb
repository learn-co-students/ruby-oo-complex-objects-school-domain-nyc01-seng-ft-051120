class School

def initialize(school_name)
    @school_name = school_name
    @roster = {}
end 

def school_name
    @school_name
end 

attr_accessor :roster

def add_student(name, grade)
    
    if !@roster[grade]
        @roster[grade]= []
    end
    @roster[grade] << name
end 

def grade(grade)
    @roster[grade]
end 

def sort
    @roster.each do |grade, names|
        @roster[grade] = names.sort
    end
end

end

