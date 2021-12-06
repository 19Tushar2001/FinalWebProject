class RegistrationsController < Devise:: RegistrationsController
  private
  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :address, :postal_code, :city, :province_id)
  end

  def account_update_params
    params.require(:user).permit(:name,:emial,:password,:password_confirmation,:address,:postal_code,:city,:province_id)
  end
end