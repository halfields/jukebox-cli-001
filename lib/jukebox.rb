

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def say_hello(name)
  puts "Hi #{name}!"
end

 def help
    puts "  I accept the following commands"
    puts "  -help: displays this  help message"
    puts "  -list: displays a list of songs you can play"
    puts "  -play: lets you choose a song to play"
    puts "  -exit: exits this program"
  end

  def list(songs)
    songs.each_with_index do |name, index|
      puts "#{index + 1}.  #{name}"
    end
  end

  def play(songs)
    selection = gets.downcase.strip
    if selection.to_i == 0
      songs.each do |song|
        if selection == song.downcase
          puts selection.capitalize
        else
          puts "/Invalid input, please try again/"
        end
      end
    else
        if selection.to_i >= 1 && selection.to_i <= 9
          puts songs[(selection.to_i)-1]
        else puts "/Invalid input, please try again/"
        end
    end
  end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Enter your name:"
  users_name = gets.chomp
  say_hello(users_name)
  #loop do
    puts "Please enter a command: help, list, play, or exit"
    command = gets.chomp
    case command
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        puts "Select song. Type artist and name as displayed or type number"
        play
      when "exit"
        exit_jukebox
     #   break
      else
        puts "/Invalid input, please try again/"
      end
    #end
  end
