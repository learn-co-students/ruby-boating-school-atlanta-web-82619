class Instructor

    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def pass_student(student, test_name)
        if BoatingTest.all.find {|t| t.test_name == test_name && student.name == student}
            BoatingTest.all.find {|t| t.test_name == test_name && student.name == student}.test_status = "passed"
        else 
            BoatingTest.new(student, test_name, "passed", self)
        end 
    end 

    def fail_student(student, test_name)
        if BoatingTest.all.find {|t| t.test_name == test_name && student.name == student}
            BoatingTest.all.find {|t| t.test_name == test_name && student.name == student}.test_status = "failed"
        else 
            BoatingTest.new(student, test_name, "failed", self)
        end 
    end 

    def self.all
        @@all
    end 

end
