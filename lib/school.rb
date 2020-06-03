
class School
  attr_accessor :name, :roster #creates name and roster methods

  def initialize (name)
    @name = name # initializes @name as instance variable to equal to name
    @roster = {} # intializes @roster as instance variable to equal an empty hash
  end

  def add_student (student_name, grade)
    roster[grade] ||= [] #  #sets the key to the array of students names to grade. ||= "or equals"
    roster[grade] << student_name #The value of each key will be an array of student names.
  end

  def grade (grade)
   roster[grade] #takes in an argument of grade and returns the students in the roster by grade
  end

  def sort
    sorted = {} #new hash, students name need to be alphabetized in this new hash
    roster.each do |grade , students| #each will iterate over hash and over keys of grade and values of students
      sorted[grade]= students.sort #calls on new has and key of grade to equal students . sort method called to alphabetize students names
    end
    sorted #returns new has sorted
  end
















end

