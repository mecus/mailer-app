# Preview all emails at http://localhost:3000/rails/mailers/mail_order_mailer
class MailOrderMailerPreview < ActionMailer::Preview
  def order_success
    MailOrderMailer.order_success(Mailing.last)
  end
end
