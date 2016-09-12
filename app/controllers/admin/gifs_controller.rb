class Admin::GifsController < Admin::BaseController

  def create
    @category = Category.find(params[:category_id])
    url = create_url_path(@category.name)
    gif_data = generate_gif(url)['data'].first
    image = gif_data['images']['original']['url']
    small_image = gif_data['images']['fixed_height_small']['url']
    url_path = gif_data['url']
    name = gif_data['slug']
    bitly = gif_data['bitly_url']
    @gif = @category.gifs.new(url_path: url_path, image: image, name: name, bitly: bitly, small_image: small_image)
    if @gif.save
      redirect_to admin_category_gif_path(@category, @gif)
    else
      redirect_to @category
    end
  end

  def show
    @gif = Gif.find(params[:id])
  end

  def destroy
    gif = Gif.find(params[:id]).destroy
    flash[:notice] = "Article #{gif.name} was deleted"
    redirect_to admin_category_path(gif.category)
  end

end
