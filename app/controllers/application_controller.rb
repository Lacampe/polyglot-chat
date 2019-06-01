class ApplicationController < ActionController::Base
  def user
    current_user
  end
end
