module SendMail


 def send_mail mailer
   @name = mailer.name
   @url = "http://www.londoncityroast.com"
   @subject = "Confirmation email for #{@name}"
   @html = "<p> Dear Mr. #{@name}, Thank you for placing order on our websit, please follow the link below to our site #{@url} </p>"
   @text = "The business have grown from strength to strength sourcing for the best"
   @email = mailer.email
  #  First, instantiate the Mailgun Client with your API key
   mg_client = Mailgun::Client.new ENV["MAILGUN_API"]

   # Define your message parameters
   message_params =  { from: 'City Roast <mailgun@mail.londoncityroast.com>',
                       to:   @email,
                       subject: @subject,
                       text: @text,
                       html: @html
                     }

   # Send your message through the client
   response = mg_client.send_message('mail.londoncityroast.com', message_params).to_h!

  # render json: {id: response['id'], message: response['message']}

  #  redirect_to root_path

 end
end
