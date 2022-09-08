# Ruby is a pure object-oriented language. Even arrays and functions are objects.
# The number 4 is an object.
# The class method is a Ruby method that can be called on any object and will
# return the class of that object.
puts 4.class

# The methods method returns the methods that may be called on an object.
# The inspect method allows us to see the methods in a more readable form.
puts 4.methods.inspect

# Mathmatical and comparison operators are treated like methods in Ruby.
# Each of these statements illustrates a method being called.
# The thing before the period is referred to as the reciever. 
# The thing after the period is the name of the method being called.
puts 4.+4
puts 4.-2
puts 4.<=3

# Mathmatical and comparison operations may be performed in a more traditional manner.
puts 4 + 4
puts 4 - 2
puts 4 <= 3

# Method names may have a question mark at the end. They are answering a question.
# They return true or false.
puts 4.even?

# Write the lines of code that tell us the class of "Jin Joint" and the methods 
# available to it.
puts "Jin Joint".class
puts "Jin Joint".methods.inspect
puts "Jin Joint".length
puts "Jin Joint".index("o")

# Method names may have an exclamation mark at the end. Methods that modify the state
# of an object which they're called have the exclamation mark at the end. There is 
# always a second version of these methods that do not have the exclamation mark. They
# do not modify the state of the object. They make a copy of the object and then modify
# the copy.
str = "Jin Joint"
upStr = str.upcase
puts upStr
puts str

mixStr = str.upcase!
puts mixStr
puts str

# Write the lines of code that tell us the class of 5.2 and the methods availble to it.
puts 5.2.class
puts 5.2.methods.inspect
puts 5.2.<=4.3
puts 5.2.round