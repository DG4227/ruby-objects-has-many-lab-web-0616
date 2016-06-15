require 'pry'
class Artist

	attr_accessor :name, :songs

	@@all = []
	@@song_count = 0

	def self.all
		@@all
	end

	def self.song_count 
		num = 0 
		Artist.all.each do |artist|
			num += artist.songs.count
		end
		@@song_count = num
	end


	def initialize(name)
		@name = name
		@songs = []
		save
	end

	def save
		@@all << self 
	end

	def add_song(song)
		@songs << song
		song.artist = self
	end

	def add_song_by_name(song)
		song = Song.new(song)
		self.add_song(song)
	end

	def print_songs
		@songs.each {|song| puts song.name}
	end

end
