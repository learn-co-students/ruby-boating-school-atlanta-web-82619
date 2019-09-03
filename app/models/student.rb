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

    def add_boating_test(test_name, status, instructor)
        bt= BoatingTest.new(self, test_name, status, instructor)
    end 

    def find_student(first_name)
        @@all.select {|s| self.first_name == first_name}
    end 

    def tests
        BoatingTest.all.select {|t| t.student == self}
    end 

    def passing_test 
        tests.all.select {|t| t.test_status == "passed"}
    end 

    def grade_percentage
        passing_test.size / (tests.size.to_f) * 100
    end 

end 
