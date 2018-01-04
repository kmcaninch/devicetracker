class AdminController < ApplicationController
  def index
    @devices = Device.all
  end
end
