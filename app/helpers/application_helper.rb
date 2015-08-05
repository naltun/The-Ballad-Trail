module ApplicationHelper 
	def name(x)
		@name = Place.find(x).name
		return @name
	end

	def latitude(x)
		@latitude = Place.find(x).latitude
		return @latitude
	end

	def longitude(x)
		@longitude = Place.find(x).longitude
		return @longitude
	end
end