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
        t = BoatingTest.all.find { |t| t.student == student && t.test_name == test_name } 
        if t
            t.test_status = "passed"
        else
            BoatingTest.new(student, test_name, self, "passed")
        end
    end

    def fail_student(student, test_name)
        t = BoatingTest.all.find { |t| t.student == student && t.test_name == test_name } 
        if t
            t.test_status = "failed"
        else
            BoatingTest.new(student, test_name, self, "failed")
        end
    end
end
