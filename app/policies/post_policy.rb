class PostPolicy < ApplicationPolicy
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
      # ユーザー詳細は管理ユーザーのみ許可
      user.admin?
    end
  end