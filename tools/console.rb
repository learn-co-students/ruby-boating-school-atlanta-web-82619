require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")
 
puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")

test1 = BoatingTest.new(spongebob, "Boating 101", puff)
test2 = BoatingTest.new(spongebob, "Boating 102", puff)
test3 = BoatingTest.new(patrick, "Braking 101", puff)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

