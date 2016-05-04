class AccountingController < ApplicationController
  def index
    authorize Device
    if current_user.admin?
      @devices = Device.unpaid.wanted
    else
      @devices = Device.where(user_id: current_user.id)
    end
  end

  def editing_device
  	@devices = Device.find(params[:id])
  end
  def edit
    @devices = Device.find(params[:id])
    if @devices.update(device_params)
      redirect_to :action => 'accounts'
    end
  end
  def new
  end

  def show
  end
end
