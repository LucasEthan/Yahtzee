#!/usr/bin/env ruby

require_relative "dice"

def show_rolls(dice, message = "You rolled:")
  puts "#{message}\n#{dice}\n"
end

puts "Press any key to roll five six-sided dice."
gets
dice = Dice.new
dice.roll(5)
show_rolls(dice)

rerolls = []
2.times do
  print "Would you like to reroll or keep them? [Y/N]: "

  break unless gets.upcase[0] == "Y"

  loop do
    puts "[0] Reroll all the dice." if rerolls.empty?
    5.times do |i|
      puts "[#{i + 1}] Reroll dice ##{i + 1} (#{dice.last_roll[i]})." unless rerolls.include? i
    end
    puts "[6] Continue game"
    print "Enter your choice: "
    choice = gets[0].to_i - 1
    if choice == -1
      dice.reroll
      show_rolls(dice, "The updated rolls are now:")
    elsif (0..4).include?(choice)
      puts "Dice ##{choice + 1} (#{dice.last_roll[choice]}) has been rerolled to #{dice.reroll(choice)[choice]}"
      rerolls << choice
    end
    break if choice == 6
  end
end
