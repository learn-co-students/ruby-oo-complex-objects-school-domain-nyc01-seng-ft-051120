# code here!
require 'pry'
class School
attr_accessor :roster
    def initialize(school_name)
        @school_name=school_name
        @roster={}
    end



    def add_student(name, grad)
       if @roster[grad]==nil
        @roster[grad]=[name]
       else
        @roster[grad].push(name)
       end
    end
    def grade(grad)
        @roster[grad]
    end
    def sort
       @roster.sort{ |key, value|
       @roster[key]=value.sort
       }
    end
end

