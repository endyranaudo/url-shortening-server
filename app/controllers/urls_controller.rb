class UrlsController < ApplicationController
  
  def index 
    urls = Url.all
    render json: urls
  end

  def show
    url = Url.find_by(shortened: url_params[:shortened])
    redirect_to url.original
  end


  private 

  def url_params
    params.permit(:original, :shortened)
  end
end