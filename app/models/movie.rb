class Movie < ActiveRecord::Base
  def self.all_ratings
    ["G", "PG", "PG-13", "NC-17", "R"]  
  end
  def Movie.with_ratings(ratings_list)
    if ratings_list.nil? or ratings_list.empty?
      return Movie.all
    end
    where('upper(rating) IN (?)', ratings_list)
  end
end
