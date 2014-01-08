pages_with_questions = {}

lines_grabbed = ""
key = ""

File.open("story.txt", "r") do |infile|
  
  while (line = infile.gets)  # read IF there is a line
  	if line.index("~p")       # index the lines and look for "~p"
  		key = line.chomp            # assign the line with ~p to the variable key
  		lines_grabbed = ""    # don't grab any lines
  	else
  		lines_grabbed += line # go to the next line
  	end
  	pages_with_questions[key] = lines_grabbed  # now we have the key and the next line
  end
end

p1 = pages_with_questions.select do |key, value| # what is going on here?
	key.index("~p1")
end


#puts pages_with_questions

p1.each do |k, v|
	puts v
end

# consider gets pages_with_answers

p2 = {}

p1.each do |k, v|
	if k.index(":p")
		new_key = "~" + k.slice(7,2)  # ~p3
		p2[new_key] = pages_with_questions[new_key]
    end
end

puts p2.to_s
 
# index answers
puts " answer 1, 2, or 3"
input = gets.chomp.to_i # grabbing input

answers = p1.each do |k, v|  # open the hash, get the key
	k.index("~c#{input}")
end

final answer = pages_with_answers do |k, v|
	k.index("~p#{input+1}")
end









# output of picking a choice





