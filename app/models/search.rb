require "youtube_g"
class Search < ActiveRecord::Base
  validates_length_of :query, :minimum => 1

  def results
    client = YouTubeG::Client.new
    result = client.videos_by(:query => self.query, :per_page => 50)
    result.videos.reject(&:noembed)
  end
end
