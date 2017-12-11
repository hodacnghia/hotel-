class MyHotelController < ApplicationController
  def index
    @user = current_user
    @hotels = @user.hotels.all.paginate(page: params[:page], per_page: 2)
  end
end