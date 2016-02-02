numbers = (1..100).to_a #Array of integers 1 to 100

numbers.each do |integer|
    if integer%3==0 and integer%5!=0 then
        output = "Fizz"
    elsif integer%5==0 and integer%3!=0 then
        output = "Buzz"
    elsif integer%5==0 and integer%3==0 then
        output ="FizzBuzz"
    else
        output = integer
    end
    puts output
end

