class DevicesController < ApplicationController
  def index

  end

  def show
    @device = Device.find_by uuid: params[:uuid]
    @user = User.new name: params[:name], slogan: params[:slogan], height: params[:height], weight: params[:weight]
  end
end
