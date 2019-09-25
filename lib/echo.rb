require "time"
class Echo

  def prompt
    "Say something:"
  end

  def get_input
    input = gets.chomp
    # puts "You said: #{input}"
  end

  def get_time
    Time.now.strftime("%d/%m/%Y %H:%M")
  end

  def print
    "#{get_time} | You said: '#{get_input}'!"
  end
end
