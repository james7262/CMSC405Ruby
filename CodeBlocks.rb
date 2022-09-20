

# This method uses the call method to execute a code block.
def call_block &b
    b.call
end

call_block {puts 'Hello there'}

# The call method may be provided arguments too.
# This method uses the call method that has been provided arguments.
def call_block_greeting &b
    b.call "Ron"
end

# Call call_block_greeting giving it a code block.
call_block_greeting {|name| puts "Hello there #{name}"}

# Code blocks are used throughout Ruby with iterators and collections such as an array.
moreanimals = ['lions and', 'tigers and', 'bears', 'oh my']
moreanimals.each {|a| print a, " "}
puts ('a'..'e').each {|char| print char}

#There are other iterator methods in Ruby, like upto.
puts
3.upto(6) {|i| print i}

# Code blocks may be returned by functions, but first they must be converted into 
# Proc objects. Ruby has a function named lambda that converts a code block into 
# a Proc object.
def n_times thing
    lambda {|n| thing * n}
end

# Call n_times and store its return in a variable.
# {|n| 23 * n}
puts
p1 = n_times 23
puts p1.class

# To execute the code block contained in p1, use the call statement.
puts p1.call 3
puts p1.call 4

# Call n_times and store its return in a variable, but give it a different argument.
# {|n| "Hello" * n}
p2 = n_times "Hello "

# To execute the code block contained in p2, use the call statement.
puts p2.call 3

# This function contains a do-end code block that will be returned
# as a Proc object
def day_of_week
    lambda do |today|
        if today.saturday?
            'Do chores around the house.'
        elsif today.sunday?
            'Relax.'
        else
            'Go to school.'
        end 
    end
end

# Call day_of_week and store its return in a variable.
d = day_of_week

# To execute the code block contained in d, use the call statement.
puts d.call Time.now
    