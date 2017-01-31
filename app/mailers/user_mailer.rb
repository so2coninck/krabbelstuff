class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.nvmsg.subject
  #
  def nvmsg
    mail(to: "krabbelstuff@gmail.com", subject: 'Krabbelsuff : nouveau message'
    )
  end
end
