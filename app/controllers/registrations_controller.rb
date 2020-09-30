class RegistrationsController < Devise::RegistrationsController
    # manual Registration Controller < Devise gem 
    # define params required for sign up and updating account 
  private
  def sign_up_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :current_password)
  end
end
