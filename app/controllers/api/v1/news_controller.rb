class Api::V1::NewsController < ApplicationController
    def index
      news = News.all
      render json: news, status: :ok
    end
end