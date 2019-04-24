class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
  end
  
  def most_popular_show
    Show.where("rating = ?", params[])
  end
end