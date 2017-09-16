class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.nvmsg.subject
  #
  def nvmsg
    mail(to: "krabbels@pt.lu, scourbey@gmail.com",subject: 'Krabbelsuff.lu : nouveau message'
    )
  end
end
