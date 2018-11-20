class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Активация аккаунта"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Восстановление пароля"
  end
end
