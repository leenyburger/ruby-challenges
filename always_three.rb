#puts 'Please enter a number!'
#input = gets.to_i
#number_1=input.to_i
#number_1+=5
#number_1*=2
#number_1-=4
#number_1/=2
#final_number = number_1-input
#puts final_number

#Refactored
#def always_three (input)
#    puts answer = ((((input+5)*2)-4)/2) - input
#end
#puts 'Please enter a number'
#input = gets.to_i
#always_three(input)


def determine_current_hour
    current_time = Time.new
    current_hour = current_time.hour
end

def greeting
    name = user_name
    current_hour = determine_current_hour
    if(current_hour > 3 && current_hour < 12)
        time = "morning"
        elsif(current_hour > 12 && current_hour < 18)
        time = "afternoon"
        elsif(current_hour > 18 || current_hour < 2)
        time = "evening"
    end
    puts "Good #{time}, #{name.capitalize}!"
end

def user_name
    puts "What is your name?"
    name =gets 
end 
greeting