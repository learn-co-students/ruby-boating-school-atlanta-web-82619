require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new("Andy")
student2 = Student.new("Pam")
student3 = Student.new("Jim")

instructor1 = Instructor.new("Alex")
instructor2 = Instructor.new("Nick")
instructor3 = Instructor.new("Raza")

bt1 = BoatingTest.new(student1, "beginner", "passed", instructor1)
bt2 = BoatingTest.new(student1, "intermediate", "passed", instructor1)
bt3 = BoatingTest.new(student1, "advanced", "failed", instructor1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

