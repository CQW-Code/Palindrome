#palindrome

#Welcome and ask for input

def start()
  puts "Welcome to the Palindrome Palace!"
	puts "Please enter a word that is a palindrome"
	puts "enter q to Quit"
	puts
	user_input = gets.strip.downcase
	
	@word = []
	testword(user_input)
	
end #ends start

	#put in an array to determine if palindrome... compare
def testword(user_input)
	if user_input == 'q'
    exit
	end #end if
	
	puts "Your word is: #{user_input}"
	puts

  user_input.each_char do |letter|
    @word << letter
  end #end loop

   @word.each_with_index do |letter, i|
    if letter != @word[@word.length- (i +1)]
		puts "#{user_input} isn't a palindrome, try again!"
		puts
    start
	else
		puts "Yay! A palindrome"
		puts
		start
	end #end loop
	end #end if
end #end testword

start








