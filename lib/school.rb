

class School
   attr_accessor :name, :roster

   def initialize(school)
      @school = school
      @roster = Hash.new{|h,k| h[k] = []}
   end

   def add_student(student, grade)
      @roster[grade] << student
   end

   def grade(grade_number)
      @roster[grade_number]
   end

   def sort
      @roster.each { |k, v|  @roster[k].sort!}
      @roster.sort.to_h
   end
end
