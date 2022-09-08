# Ruby provides a whole set of I/O related methods in the Kernel module.
# A ruby module is like a Java interface.

# The print methods prints each paremeter its passed to standard out (stdout).
# It does not append a new line to the end of its output.
print "cat", [1,2,3], 99, "\n"
print "cat", [1,2,3], 99, "\n"

# Observation: Arguments do not need to be enclosed in parenthesis,
# Delimeters like the semi-colon weren't needed at the end of the lines of code.

print "Enter your first name: "

# The gets method returns the next line of input from standard in (stdin)
# including the new line that's generated when the user hits the enter key.
# The chomp method removes the new line a the end of the input.
fname = gets.chomp

# Obeservation: Do not have to specify data types. Empty parenthesis are not required.

# The puts method is like the print method, but it appends a new line to its output.
# To reference a varibale value within a String, you must use String interpolation
# syntax and you must use double quotes with the String.
puts "Your first name is #{fname}"
puts 'Your first name is #{fname}'

# Prompt the user for their last name.
print "Enter your last name: "

# Get the last name the user enters.
lname = gets.chomp

# Output the message Your full name is fname lname using String interpolation.
puts "Your full name is #{fname} #{lname}"

# The printf method is like the puts method, but it allows you to format the 
# output by using format specifiers. 
printf "Your full name is %s %s\n", fname, lname
printf "My age is %d, my weight is %.2f\n", 22, 300.5

# The putc method prints the first character of the parameter its passed.
# It does not append a new line at the end of its output.
print "Your initials are: "
putc fname
putc lname
