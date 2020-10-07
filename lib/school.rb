# code here!
class School

    attr_accessor :name, :roster

    def initialize(name=nil)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster[grade]
            @roster[grade].push(student)
        else
            @roster[grade] = [student]
        end
    end

    def grade(grade)
        if @roster[grade]
            @roster[grade]
        else
            []
        end
    end

    def sort
        @roster.each do |k,v|
            v.sort!
        end
    end

end