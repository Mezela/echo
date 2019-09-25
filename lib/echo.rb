require "time"
class Echo

  def prompt
    puts "Say something:"
  end

  def get_input
    @input = gets.chomp
  end

  def get_time
    Time.now.strftime("%d/%m/%Y %H:%M")
  end

  def print
    puts "#{get_time} | You said: '#{@input}'!"
  end

  def game
    while true do
      prompt
      if get_input == "exit"
        puts "Goodbye!"
        break
      end 
      print
    end
  end
end

Echo.new.game
