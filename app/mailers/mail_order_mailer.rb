class MailOrderMailer < ApplicationMailer
  default from: ENV["MAILER_MAIL"]
  layout "mailer"

  def order_success mailer
    @email = mailer.email
    # @cc = "sales@londoncityroast.com"
    @name = mailer.name
    @url = "http://www.londoncityroast.com/coffee"
    mail(to: @email, subject: "Order Confirmation")
  end
end
