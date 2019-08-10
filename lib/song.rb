require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []
  
  extend Memorable::ClassMethods
  extend Findable
  
  include Memorable::InstanceMethods
  include Paramable

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
