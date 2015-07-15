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
  end

  def signup
  end

  def contact
  end

  def about
  end
end
