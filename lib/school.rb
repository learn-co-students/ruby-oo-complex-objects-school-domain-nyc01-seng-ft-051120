# code here!
class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    def add_student(name, grade)
        roster[grade] ||= [] #name ma byc array, jak to zmienic z stringa?
        roster[grade] << name
    end

    def grade(n)
        roster.select do |grade, name|
           if grade == n
            return name
           end
        end
    end
    def sort
        students = {}
        roster.each do |grade, name|
            students[grade] = name.sort
        end
        students
    end
end