class ApplicationMailer < ActionMailer::Base
  # set default from to be the user's email address. Mail is sent from their email address to a destination email
  default from: '#{current_user.email}'
  layout 'mailer'
end
