class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this

    drake = Artist.find_or_create_by(name: 'Drake')
    self.artist = drake
  end
end

    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*
    
    ## create conditional for if drake exists. if he does then assign the song's artist to drake. 
    ## we are given a song, check if drake exits, then if so, assign drake as the artist of the song. 
    # forever = Song.create(name: "Forever")
    # drake = Artist.create(name: "Drake")
    # forever.artist = drake

    # @song = Song.create(name: "Forever")
    # drake.songs << @song
    # forever.artist