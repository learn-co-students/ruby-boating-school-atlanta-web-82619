class Student
    attr_reader :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.find_student(first_name)
        all.find { |s| s.first_name == first_name}
    end

    def add_boating_test(test_name, instructor)
        BoatingTest.new(self, test_name, instructor)
    end

    def tests
        BoatingTest.all.select { |t| t.student == self }
    end

    def grade_percentage
        total = tests.count
        passed = tests.select { |t| t.test_status == "passed" }.count
        (passed / total).to_f
    end
end
