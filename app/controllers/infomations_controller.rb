class InfomationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @infomation = Infomation.new
  end

  def index
    @infomation = Infomation.all
  end

  def show
    @infomation = Infomation.find(params[:id])
  end

  def create
    @infomation = Infomation.new(infomation_params)
    @infomation.user_id = current_user.id
    @infomation.save
    redirect_to infomation_path
  end

  def edit
    @infomation = Infomation.find(params[:id])
  end

  def destroy
    @infomation = Infomation.find(params[:id])
    @infomation.destroy
    redirect_to infomations_path
  end

  private
  def infomation_params
   params.require(:infomation).permit(:title, :cost, :attack, :health, :body, :e_attack, :e_health, :e_body, :image)
  end

end
