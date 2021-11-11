class UsersController < ApplicationController
  def index
    @users = if current_user.admin?
               # adminは全ユーザーを表示
               User.all
             else
               # generalは、自分のを表示
               redirect_to mypages_path(current_user.id)
               @user = current_user
               authorize @user
             end
  end

  def show
    # 個別のUserの情報を表示
    @user = User.find(params[:id])
    # punditにてauthorizeメソッドにリソースオブジェクトを渡して認可状況を確認。
    authorize @user
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update

  end

  def destroy

  end
end
