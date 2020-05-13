class School
    attr_accessor :name

    def initialize(name)
        @name = name
        @roster = {} 
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
        # puts "Added #{name} to Grade #{grade} Student Roster."
    end

    def grade(grade)
        roster[grade]
    end

    def sort(grade)
        roster[grade].sort
    end

end

school1 = School.new("School 1")
school1.add_student("Adam", 9)
school1.add_student("Belle", 9)

puts school1.sort(9)