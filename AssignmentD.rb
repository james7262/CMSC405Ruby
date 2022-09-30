# 1. Write the lines of code that output the words to the
# '99 bottles of beer' song.
# You must use a block-form while loop and the loop must be
# capable of starting at any positive integer bottle number 
# (like 99) and stopping at any positive integer bottle number 
# (like 97) where starting integer > stopping integer.
# You must use string interpolation syntax to produce the output. 
# Example output for when the song starts at 99 bottles and
# stops at 97 bottles is illustrated below:
# 99 bottles of beer on the wall. 99 bottles of beer.
# Take one down, pass it around 98 bottles of beer on the wall.
# 98 bottles of beer on the wall. 98 bottles of beer.
# Take one down, pass it around 97 bottles of beer on the wall.
startBottles = 99
endBottles = 97
while startBottles.> endBottles
    puts "#{startBottles} of beer on the wall, #{startBottles} bottles of beer."
    startBottles = startBottles.-1
    puts "Take one down, pass it around #{startBottles} bottles of beer on the wall."
end

# 2. Write a function named sing that outputs the words to the
# '99 bottles of beer' song. It must use a block-form while 
# loop and the loop must be
# capable of starting at any positive integer bottle number 
# (like 99) and stopping at any positive integer bottle number 
# (like 97) where starting integer > stopping integer.
# It must use string interpolation syntax to produce its output.
# It must produce output that is the same as illustrated in the 
# example output above. It must have two integer input parameters 
# that define the start and stop integer bottle numbers for the song.
def sing startBottles, endBottles
    while startBottles.> endBottles
        puts "#{startBottles} of beer on the wall, #{startBottles} bottles of beer."
        startBottles = startBottles.-1
        puts "Take one down, pass it around #{startBottles} bottles of beer on the wall."
    end
end

# 3. Write the code to call sing function.
puts sing 99, 97

# 4. Write a function named sing that returns a code block. 
# The code block must use a block-form while loop must be
# capable of starting at any positive integer bottle number 
# (like 99) and stopping at any positive integer bottle number 
# (like 97) where starting integer > stopping integer.
# It must use string interpolation syntax to produce the output.
# It must produce output that is the same as illustrated in the 
# example output above. It must have two integer input parameters 
# that define the start and stop integer bottle numbers for the song.
def sing 
    lambda do |startBottles, endBottles|
        while startBottles.> endBottles
            puts "#{startBottles} of beer on the wall, #{startBottles} bottles of beer."
            startBottles = startBottles.-1
            puts "Take one down, pass it around #{startBottles} bottles of beer on the wall."
        end 
    end
end

# 5. Write the code to call the sing function and store 
# the code block it returns in a variable named s.
s = sing

# 6. Write the code to execute the code block contained in s.
puts s.call 99, 97

# 7. Explain how you interacted with the Ruby programming language? Your
# response to this question must be at least 1 full paragraph (50 words).
# I interacted with Ruby via creation of "objects", and manipulating these objects in a variety of ways that Ruby supports
# inlcuding output via its print and puts methods, functions that I created, as well as storing data within their own
# structures and accessing them via functions, all withing an integrated development environment of Visual Studio Code.

# 8. What Ruby method returns the class of an object?
# The class method, which follows this syntax: object.class, with the word "object" being the name of the object who's class 
# you wish to identify.

# 9. What is Ruby's typing model?
# Ruby is dynamically typed.

# 10. Explain what it means to be weakly (or loosely) typed?
# Weakly or loosely typed mean that the language does not require explicit data types to be associated with 
# any object that is declared. Java is strongly typed, meaning that an object has to be declared with a data type, or else 
# the code will fail and a syntax error will be generated.

# Bonus (5 points). Explain what exclamation mark ! methods do in Ruby? Your
# response to this question must be at least 1 full paragraph (50 words).
# Exclamation mark methods usually override any other instances of the method that is called within the same file. This can
# be an issue if you are using methods that are meant to generate different output via different parameters, or if you are 
# going to call an object that has been manipulated by the exclamation method, as it will be permanently altered.