class ApplicationController < ActionController::Base
  include Pundit::Authorization
  before_action :authenticate_employee!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def pundit_user
    #Here we defined employee instead of user for pundit usage
    current_employee
  end

  private
  def user_not_authorized
    flash[:alert] = "You shall not pass"
    redirect_back(fallback_location: root_path)
  end
end
