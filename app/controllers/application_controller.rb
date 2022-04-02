class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:password,:nome,:bio,:link_linkedin,:avatar])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:email,:password])
        devise_parameter_sanitizer.permit(:account_update, keys: [:email,:password,:account_update,:nome,:bio,:link_linkedin,:avatar])

  end
end
