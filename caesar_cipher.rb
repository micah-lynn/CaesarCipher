require 'colorize'

puts "Type a secret message:".yellow
user_message = gets.chomp

print "Enter a number to scramble the letters: ".yellow
user_shift = gets.chomp.to_i  

#Define the caesar cipher method
def caesar_cipher(string, number)
    
    #Define alphabet lower and uppercase
    alpha_array_lower = ('a'..'z').to_a
    alpha_array_upper = ('A'..'Z').to_a

    #Convert string to array
    string_split = string.split('').to_a

    #Input each letter from the string and return its new value
    new_array = []
    string_split.each do |n|
        if n =~ /[a-z]/
            letter_change = (alpha_array_lower.index(n) + number) % 26
            new_array += [alpha_array_lower[letter_change]]
        elsif n =~ /[A-Z]/
            letter_change = (alpha_array_upper.index(n) + number) % 26
            new_array += [alpha_array_upper[letter_change]]   
        elsif n == ' '
            new_array += [' ']
        elsif n == '!'
            new_array += ['!']
        elsif n == '.'
            new_array += ['.']
        elsif n == '?'
            new_array += ['?']
        end
    end
    #Print output to terminal
    puts new_array.join.green
end

#Run the method
print caesar_cipher(user_message, user_shift)