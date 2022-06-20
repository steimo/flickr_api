class StaticPagesController < ApplicationController
  def index
    @flickr = Flickr.new ENV['API_KEY'], ENV['API_SECRET']
    @photos = if params[:id].blank?
                @flickr.photos.getRecent
              else
                @flickr.photos.search(user_id: params[:id])
              end
  rescue StandardError => e
    flash[:alert] = "#{e.class}: #{e.message}. Please try again..."
    redirect_to root_path
  end
end
