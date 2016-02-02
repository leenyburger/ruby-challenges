
def legit_birthday (birthdate)
    puts "Wrong format dummy!  Try again!"
    birthdate = gets
    birthdate = birthdate.chomp
end


puts "What is your birthdate?  It MUST be in the format MMDDYYYY"
birthdate = gets #Note : this is an array of strings
birthdate = birthdate.chomp #Chomp off the new line

while birthdate.length!=8 do
    birthdate = legit_birthday(birthdate)   #Check to see if the birthdate is legit
end

def find_numerology_number (birthdate)
    while birthdate.length >1 do
        sum = 0
        for i in 1..birthdate.length
            sum+=birthdate[i-1].to_i
        end
        birthdate = sum.to_s
    end
    numerology_number = birthdate.to_i
end

numerology_number = find_numerology_number(birthdate)
puts "Your numerology number is #{numerology_number}"
def numerology_message (numerology_number)
    case (numerology_number)
        when 1
            puts "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
        when 2
            puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
        when 3
            puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
        when 4
            puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
        when 5
            puts "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
        when 6
            puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
        when 7
            puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
        when 8
            puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
        when 9
            puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
        else
            puts "Error"
    end
end
numerology_message(numerology_number)

