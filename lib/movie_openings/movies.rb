class MovieOpenings::Movies 
  attr_accessor :name, :year, :playing, :url
  
  def self.today
    puts <<-DOC.gsub/^\s*/,''
      1.PLAYMOBIL - 2019
      2.THE ISLAND - 2019
    DOC
    movie_1 = self.new 
    movie_1.name = "PLAYMOBIL"
    movie_1.year = "2019"
    movie_1.playing = true
    movie_1.url = "https://www.rottentomatoes.com/m/playmobil_the_movie"
    
    movie_2 = self.new 
    movie_2.name = "THE ISLAND"
    movie_2.year = "2019"
    movie_2.playing = true
    movie_2.url = "https://www.rottentomatoes.com/m/the_islands"
  
    [movie_1, movie_2]
  end
  
  
end
    