require "pry"
class Instructor

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        matching_test = BoatingTest.all.find {|test| test.student == student && test.test_name == test_name}
        if matching_test 
            matching_test.test_status = "passed"
            matching_test
        else
            new_test = BoatingTest.new(student, test_name, test_status, self)
            new_test.test_status = "passed"
            new_test
        end
    end

    def fail_student(student, test_name)
        matching_test = BoatingTest.all.find {|test| test.student == student && test.test_name == test_name}
        if matching_test 
            matching_test.test_status = "failed"
            matching_test
        else
            new_test = BoatingTest.new(student, test_name, test_status, self)
            new_test.test_status = "failed"
            new_test
        end
    end
end
