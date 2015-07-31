module ApplicationHelper
	@x = 0
  @places = Array.new
  
  Place.all.each do |p|
    @x += 1
    @places.push("#{Place.find(@x).name}, #{Place.find(@x).latitude}, #{Place.find(@x).longitude}")
  end
end
