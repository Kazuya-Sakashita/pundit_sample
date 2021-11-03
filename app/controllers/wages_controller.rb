class WagesController < ApplicationController
  def index
    if @user = current_user.admin?
      # adminは全ユーザーを表示
      @wages = Wage.all
    else
      # generalは、自分のを表示
      redirect_to wages_show_path
      @user = current_user
      authorize @user
    end
  end


  def edit
    @wage = Wage.find(params[:id])
  end

  def update
    @wage = Wage.find(params[:id])
    @wage.update(wage_params)
    redirect_to wages_path
  end

  def show
  end

  def destroy
    @wage = Wage.find(params[:id])
    @user = current_user
    authorize @user

    if @wage.destroy
      redirect_to wages_path
    else
      render :index
    end
  end

  def new
    @wage = Wage.new
  end

  def create
    @wage = Wage.new(wage_params)
    @wage.save
    redirect_to wages_path
    @user = current_user
    authorize @user
  end

  def wage_params
    params.require(:wage).permit(:user_id, :unit_price, :unit)
  end
end
