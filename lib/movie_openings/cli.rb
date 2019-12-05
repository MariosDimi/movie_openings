class MovieOpenings::CLI 
  
  def call 
    puts "Today's Movie Openings:"
    list_of_movies
    movie_menu
  end
  
  def list_of_movies
    #here_doc https://www.rottentomatoes.com/browse/opening/
    puts <<-DOC.gsub/^\s*/,''
      1.PLAYMOBIL - 2019
      2.THE ISLAND - 2019
    DOC
  end
  
  def movie_menu
    puts "Please choose if you want to know more information about those movies, or see them as list or simpy exit the menu."
    
end