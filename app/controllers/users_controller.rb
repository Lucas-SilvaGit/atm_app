class UsersController < ApplicationController
  def close_account
    current_user.update(inactive_at: Time.now)
  end
end
