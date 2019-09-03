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
        self.tests.reduce(0) {|memo, test| test.test_status == 'passed' ? memo + 1 : memo} / tests.size.to_f
    end
end
