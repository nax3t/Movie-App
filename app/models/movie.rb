class Movie < ActiveRecord::Base
	def self.search(query)
	  # where(:title, query) -> This would return an exact match of the query
	  # where("title like ? OR description like ? OR year_released like ?", "%#{query}%", "%#{query}%", "%#{query}%") 
		where do
			(title =~ "%#{query}%") | (description =~ "%#{query}%") | (year_released =~ "%#{query}%")
		end
	end
end
