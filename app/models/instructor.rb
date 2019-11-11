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
        else
            BoatingTest.new(student, test_name, "passed", self)
        end
    end

    def fail_student(student, test_name)
        matching_test = BoatingTest.all.find {|test| test.student == student && test.test_name == test_name}
        if matching_test 
            matching_test.test_status = "failed"
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
    end
end
