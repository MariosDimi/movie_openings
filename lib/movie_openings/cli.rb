class MovieOpenings::CLI 
  
  def call 
    puts "Today's Movie Openings:"
    list_of_movies
    movie_menu
    closing
  end
  
  def list_of_movies
    #here_doc https://www.rottentomatoes.com/browse/opening/
    puts <<-DOC.gsub/^\s*/,''
      1.PLAYMOBIL - 2019
      2.THE ISLAND - 2019
    DOC
    @movies = MovieOpenings::Movies.today
    @movies.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.name} - #{movie.year} - #{movie.playing}"
    end
  end
  
  def movie_menu
    input = nill
    while input != "exit"
    puts "Please choose if you want to know more information about those movies, or see them as list or simpy exit the menu."
    input = gets.strip.downcase
      
      if input.to_i > 0
        
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