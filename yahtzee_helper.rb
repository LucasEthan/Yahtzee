module YahtzeeHelper
  def show_rolls(dice, message = "You rolled:")
    puts "#{message} #{dice}\n"
  end

  def initial_roll
    puts "Press any key to roll five six-sided dice."
    gets
    Dice.new.tap do |dice|
      dice.roll(5)
    end
  end

  def reroll_dice(dice)
    2.times do
      rerolls = []
      show_rolls(dice)
      print "Would you like to reroll or keep them? [Y/N]: "

      break unless gets.upcase[0] == "Y"

      loop do
        break if rerolls.count == 5

        puts "[0] Reroll all the dice." if rerolls.empty?
        5.times do |i|
          puts "[#{i + 1}] Reroll dice ##{i + 1} (#{dice.last_roll[i]})." unless rerolls.include? i
        end
        puts "[6] Continue game"
        print "Enter your choice: "
        choice = gets[0].to_i - 1

        if choice == -1
          dice.reroll
          rerolls = [0, 1, 2, 3, 4]
        elsif (0..4).include?(choice)
          puts "Dice ##{choice + 1} (#{dice.last_roll[choice]}) has been rerolled to #{dice.reroll(choice)[choice]}"
          rerolls << choice
        end
        break if choice == 6
      end
    end
  end
end
