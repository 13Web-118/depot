class Person
    def initialize(lname, fname)
        @lname = lname
        @fname = fname
    end
    attr_reader :lname, :fname
    attr_writer :lname, :fname
end

class Employee < Person
    def initialize(lname, fname, empno)
        super(lname, fname)
        @empno = empno
    end

    attr_reader :empno
end

people = Employee.new("Tom","cat","123")
puts people.lname
puts people.fname
puts people.empno
