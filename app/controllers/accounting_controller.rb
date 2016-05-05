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

  end
  def update
    @device = Device.find(params[:id])
    if @device.update(accounts_params)
      redirect_to :action=> 'index'
    end
  end

  def show
  end

  def accounts_params
    params.require(:device).permit(:paid_for)
  end
end
