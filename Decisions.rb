
# Whenever you need to use If-Elseif statements, you should consider using 
# the Ruby case statement. In other programming languages it is known as 
# a switch statement.
# The components of the Ruby case statement are:
# case - starts a case statement definition. Takes the variable you are going to work with.
# when - every condition that can be matched is one when statement.
# else - if nothing matched then the else will be executed. This is optional.
capacity = 25

case capacity
when 0
    puts 'You ran out of gas.'
when 1..20
    puts 'The tank is almost empty. Quickly find a gas station.'
when 21..70
    puts 'You should be okay for now.'
when 71..100
    puts 'The tank is almost full.'
else
    "Error: capacity has an invalid value: #{capacity}"
end