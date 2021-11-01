class PostPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    # ユーザー詳細は管理ユーザーのみ許可
    user.general?
  end

  def create?
    user.general?
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
    # ユーザー許可した設定の人のみ消せる
    user.general? || user.admin?
  end
end
