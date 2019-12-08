class MovieOpenings::CLI 
  
  def call 
    puts "Today's movie openings are: "
    list_of_movies
    menu
    closing
  end
  
  def list_of_movies
    puts <<-DOC
      Welcome to the command line for new movies and information.
      1.PLAYMOBIL - 2019
      2.THE ISLAND - 2019
    DOC
    @movies = MovieOpenings::Movies.all
  end
  
  def menu
    input = nil
    while input != "exit"
    puts "Please choose if you want to know more information about those movies by typing the corresponding name, or simply type 'exit' to close the menu.."
    input = gets.strip.downcase
    case input
    when "PLAYMOBIL"
      
        
        puts @movies[input.to_i-1]
      elsif input =="list"
        list_of_movies
      else
        puts "This option is not available, please try again."
      end
    end
  end
  
  def closing
    puts "See you tomorrow for more movies, Goodbye."
  end
  
end