class WelcomeController < ApplicationController
  def index
    @devices = Device.all
  end
end
