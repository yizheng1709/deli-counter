# Write your code here.
def line(customers)
    if customers.length == 0
        puts "The line is currently empty."
        #iterate each customer and add to string
    else 
        line_queue = ""
        token = 1
        customers.each do |customer|
            line_queue << "#{token}. #{customer} "
            token += 1
        end 
        puts ("The line is currently: " + line_queue).chop


    end 
end 

def take_a_number(customers, name)
    if customers.length == 0
        customers << name 
        puts "Welcome, #{name}. You are number 1 in line."
    elsif customers.include?(name)  
        line_number = customers.index(name) + 1
        puts "Welcome, #{name}. You are number #{line_number} in line."
    else 
        customers << name 
        line_number = customers.length 
        puts "Welcome, #{name}. You are number #{line_number} in line."
    end 
end 

def now_serving(customers)
    if customers.length == 0
        puts "There is nobody waiting to be served!"
    else 
        current_customer = customers.shift 
        puts "Currently serving #{current_customer}."
    end 
end 