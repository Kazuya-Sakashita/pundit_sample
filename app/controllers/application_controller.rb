class ApplicationController < ActionController::Base
  # Punditを適用するcontrollerの継承元でincludeする。
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :render_403
  def render_403
    render file: Rails.root.join('public/403.html'), status: :forbidden, layout: false, content_type: 'text/html'
  end

  def after_sign_in_path_for(_resource)
    users_path
  end

    # deviseコントローラーにストロングパラメータを追加する
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
      # アカウント編集の時にnameとprofileのストロングパラメータを追加
      devise_parameter_sanitizer.permit(:account_update, keys: [
                                          :name,
                                          :phone
                                        ])
    end

end
