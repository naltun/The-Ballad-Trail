class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def authenticate_end_user!
    return if admin_signed_in?
    super
  end

  def songs
  end

  def poems
  end

  def composers
  end

  def places
  end

  def home
    @x = 0
    @places = Array.new
    
    Place.all.each do |p|
      @x += 1
      @places.push("#{Place.find(@x).name}, #{Place.find(@x).latitude}, #{Place.find(@x).longitude}")
    end
  end

  def signup
  end

  def contact
  end

  def about
  end
end
