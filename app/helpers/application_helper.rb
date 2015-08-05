module ApplicationHelper 
  def to_place
  	@places = []
	  Place.all.each do |p|
	    @places.push([p.name, p.latitude, p.longitude],)
	  end
	  return @places
	end
end