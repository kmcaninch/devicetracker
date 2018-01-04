class DevicesController < ApplicationController
  def show
    @device = Device.find(params[:id])
  end

  def new
  end

  def edit
    @device = Device.find(params[:id])
    @check = @device.checked_out
    @no_name = @check.blank?
    puts @no_name
  end

  def delete
    @devices = Device.all
  end

  def destroy
    @device = Device.find(params[:id])
    @device.destroy
    redirect_to devices_delete_path
  end

  def create
    @device = Device.new(params.require(:device).permit([:name, :code, :os, :model, :version, :checked_out]))
    @device.save
    redirect_to @device
  end

  def update
    @device= Device.find(params[:id])
    if @device.update(device_params)
      redirect_to success_index_path(:device_name => @device.name, :checked_out => @device.checked_out)
    else
      render 'edit'
    end
  end

  private
  def device_params
    puts @no_name
    if @no_name == true
      params.require(:device).require(:checked_out)
    end
    params.require(:device).permit(:checked_out)
  end
end
