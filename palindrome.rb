#palindrome

#Welcome and ask for input

def start()
puts "Welcome to the Palindrome Palace!"
puts "Pleace enter a word that is a palindrome"
puts "enter q to Quit"
user_input = gets.strip.downcase.split(" ")
@word = []
puts 
puts "Your word is: #{user_input}"
testword

#put in an array to determine if palindrome... compare??
end #ends start

start


def testword(user_input)
    if user_input == 'q'
        exit
    end #end if
    @user_input.each_char do |letter|
       @word << letter
  end #end loop

 @word.each_with_index do |letter , i|
    if letter != @word.length-1
    puts "That isn't a palindrome, try again!"
    start
    end #end if
    puts "Yay! A palindrome"
    start
end
end







