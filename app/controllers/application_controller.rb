class ApplicationController < ActionController::Base
    # Punditを適用するcontrollerの継承元でincludeする。
    include Pundit

    rescue_from Pundit::NotAuthorizedError, with: :render_403
    def render_403
        render file: Rails.root.join('public/403.html'), status: :forbidden, layout: false, content_type: 'text/html'
    end
end
