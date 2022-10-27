class UsersController < ApplicationController
  def close_account
    current_user.update(inactive_at: Time.now, password: current_user.encrypted_password)
    redirect_to root_url 
  end
end
