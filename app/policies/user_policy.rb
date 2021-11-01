# userpolicy.rbを下記の内容にて新規に作成
# 基本的に全ての機能を許可。
# ただしユーザー詳細は管理ユーザーのみ許可
class UserPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    # ユーザー詳細は管理ユーザーのみ許可
    user.admin?
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    true
  end

  def edit?
    update?
  end

  def destroy?
    true
  end
end
