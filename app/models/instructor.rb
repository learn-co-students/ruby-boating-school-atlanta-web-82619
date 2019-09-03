class Instructor
    attr_reader :name
    @@all = []

    def initialize (name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def pass_student (student, test_name)
        test = BoatingTest.all.find{|test| (test.test_name == test_name) && (test.student == student)}
        if test
            test.test_status = 'passed'
        else
            test = BoatingTest.new(student, test_name, 'passed', self)
        end
        test
    end

    def fail_student (student, test_name)
        test = BoatingTest.all.find{|test| (test.test_name == test_name) && (test.student == student)}
        if test
            test.test_status = 'failed'
        else
            test = BoatingTest.new(student, test_name, 'failed', self)
        end
        test
    end
end
