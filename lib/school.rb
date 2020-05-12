# code here!
class School
    attr_accessor :roster
    attr_reader :name
    def initialize(name)
        @roster = {}
        @name = name
    end
    def add_student (student,grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student
    end
    def grade(grade)
        @roster[grade]
    end

    def sort 
        @roster.each{|k,v| v.sort! }
    end

end