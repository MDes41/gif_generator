class User::FavoritesController < User::BaseController

  def index
    @categories = User.find(params[:favorite_id])
  end

end
