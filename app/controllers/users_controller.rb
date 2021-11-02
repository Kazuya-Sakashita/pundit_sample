class UsersController < ApplicationController
  def index
    @users = if current_user.admin?
               User.all
             else
               redirect_to user_path(current_user.id)
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
end
