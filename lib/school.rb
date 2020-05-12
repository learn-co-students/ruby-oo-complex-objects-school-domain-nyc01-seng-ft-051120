# code here!

class School
    attr_reader :school
    attr_accessor :roster, :add_student, :grade, :sort
    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_hash = {}
        @roster.map{|grade, names|
            sorted_hash[grade] = names.sort
        }
        sorted_hash
    end 



end