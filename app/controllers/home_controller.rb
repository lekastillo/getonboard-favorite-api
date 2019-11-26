class HomeController < ApplicationController
  def index
    render json: { site: 'Get on board api test', author: 'Luis Castillo' }
  end
end
