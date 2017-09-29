class UserMailer < ApplicationMailer
  default from: '#{current_user.email}'

  # send the email to the address specified on the form
  def send_email(user)
    @user = user
    mail(to: user.email, subject: 'Sent from #{@user.email}')
  end
end
