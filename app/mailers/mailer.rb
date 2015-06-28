class Mailer < ApplicationMailer
  default from: 'Happynaria <mailer.for.my.apps@gmail.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer.registered.subject
  #
  def registered(user)

    @user = user

    mail to: @user.email
  end
end
