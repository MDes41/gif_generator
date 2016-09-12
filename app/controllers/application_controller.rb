require 'net/http'
require 'json'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :current_admin?, :generate_gif

  def current_admin?
     User.find(session[:user_id]).role == "admin" if session[:user_id]
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def create_url_path(category)
    "http://api.giphy.com/v1/gifs/search?q=" + "#{category}" + "&api_key=dc6zaTOxFJmzC&limit=5"
  end

  def generate_gif(url_path)
    resp = Net::HTTP.get_response(URI.parse(url_path))
    buffer = resp.body
    result = JSON.parse(buffer)
  end

end
