class SuccessController < ApplicationController
  def index
    @device_name = params[:device_name]
    @checked_out = params[:checked_out]
  end
end
