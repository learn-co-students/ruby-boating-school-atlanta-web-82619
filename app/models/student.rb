class Student
  attr_reader :first_name

  @@all = []
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def add_boating_test(test_name, test_status, instructor )
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def tests
    BoatingTest.all.select {|test| test.student == self}
  end

  def passed_tests
    tests.select {|test| test.test_status == "passed"}
  end

  def grade_percentage
    (passed_tests.size / tests.size.to_f) * 100
  end

  def self.all
    @@all
  end

  def self.find_student(first_name)
    @@all.select {|s| s.first_name == first_name}
  end

end
