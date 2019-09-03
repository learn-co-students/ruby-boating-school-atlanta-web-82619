require "pry"

class Student

    attr_accessor :first_name

    @@all = []

    def self.all
        @@all
    end

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def add_boating_test(test_name, test_status, instructor)
        #should initialize a new boating test with a Student (Object), 
        #a boating test name (String), a boating test status (String), 
        #and an Instructor (Object)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(name)
        #will take in a first name and output the student (Object) with that name
        Student.all.find {|student| student.first_name == name}
    end

    def grade_percentage
        my_tests = BoatingTest.all.select {|test| test.student == self}
        passed_tests = my_tests.select {|test| test.test_status == "passed"}
        percentage = (passed_tests.size.to_f / my_tests.size.to_f) * 100
        percentage.round(2)
    end
end
