class Admin::GifsController < Admin::BaseController

  def create
    @category = Category.find(params[:category_id])
    url = create_url_path(@category.name)
    @gif = @category.gifs.new(url_path: url)
    if @gif.save
      redirect_to admin_category_gif_path(@category, @gif)
    end
  end

  def show
    @gif = Gif.find(params[:id])
  end

end
