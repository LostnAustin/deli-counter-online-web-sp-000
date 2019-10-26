# Write your code here.
require "pry"
#Build the line method that shows everyone their current place in the line.
#If there is nobody in line, it should say "The line is currently empty.".


def line(positions)
  katz_deli = ["The line is currently:"]

  if positions.count == 0
   puts "The line is currently empty."

 elsif positions.count > 0
  positions.each.with_index(1) do |customer, index|
      katz_deli.push("#{index}. #{customer}")
      end
    #  binding.pry
  puts  katz_deli.join(" ")
    end
  end

  #Build a method that a new customer will use when entering the deli.
  #The take_a_number method should accept two arguments, the array for the current line of people (katz_deli), and a string containing the name of the person joining the end of the
  #line. The method should call out (puts) the person's name along with their position in line. Top-Tip: Remember that people like to count from 1, not from 0 ("zero") like computers.
#binding.pry
def take_a_number(katz_deli, string)
  katz_deli << string
      puts "Welcome, #{string}. You are number #{katz_deli.length} in line."
    end


def now_serving(katz_deli)
  if katz_deli.count == 0
    puts "There is nobody waiting to be served!"

  elsif katz_deli.count > 0
    puts "Currently serving #{katz_deli[0]}."
    #katz_deli[1..-1]
    katz_deli.shift
  end
end
