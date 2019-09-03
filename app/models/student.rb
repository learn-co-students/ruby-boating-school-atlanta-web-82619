class Student
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test (test_name, test_status, instructor)
        test = BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(first_name)
        self.all.find{|student| student.first_name == first_name}
    end

    def tests
        BoatingTest.all.select{|test| test.student == self}
    end
    
    def grade_percentage
        passed_count = self.tests.reduce(0) {|memo, test| test.test_status == 'passed' ? memo + 1 : memo}
        failed_count = self.tests.reduce(0) {|memo, test| test.test_status == 'failed' ? memo + 1 : memo}

        (passed_count / (passed_count.to_f + failed_count)) * 100
    end
end
