class UsersController < ApplicationController
  def close_account
    current_user.update(inactive: Time.now)
  end
end
