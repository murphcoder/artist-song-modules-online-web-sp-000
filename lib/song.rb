require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []
  
  extend Memorable
  extend Findable
  
  include Paramable

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
