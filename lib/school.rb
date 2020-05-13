require 'pry'
# code here!
class School
  attr_accessor :roster

  def initialize(name, roster = {})
    @roster = roster
  end

  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
    self.roster = @roster
  end

  def grade(grade)
    result = self.roster.find{ |key, value|
      grade == key
    }.last
    result
  end

  def sort
    sorted_array = self.roster
      .sort_by { |grade, students| grade }
      .map { |student_class| [student_class[0], student_class[1].sort] }
      .to_h
  end
end
