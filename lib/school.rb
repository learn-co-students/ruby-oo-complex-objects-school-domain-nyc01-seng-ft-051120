require 'pry'

class School
  def initialize(name)
    @school = name
    @roster = {}
  end

  def roster
    @roster
  end 

  def add_student(student_name, grade)

    if @roster[grade]
      @roster[grade] << student_name 
    else 
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade)
     @roster[grade]
  end

  def sort
    @roster.each do |grade_number, names|
       @roster[grade_number] = names.sort
    end
 end

end 
