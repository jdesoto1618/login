# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # def send_email
  #   message = message.last
  #   UserMailer.send_email(message)
  # end

  def email
    @message = User.new(message: params[:message])
    @message.save
  end
end
