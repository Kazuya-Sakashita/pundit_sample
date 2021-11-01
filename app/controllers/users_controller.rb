class UsersController < ApplicationController
  def index
  # Userの一覧を表示
  @users = User.all
  end

  def show
  # 個別のUserの情報を表示
  @user = User.find(params[:id])
     # punditにてauthorizeメソッドにリソースオブジェクトを渡して認可状況を確認。
     authorize @user
  end
end
