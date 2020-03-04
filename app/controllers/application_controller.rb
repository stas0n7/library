class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, notice: exception.message
  end
end
