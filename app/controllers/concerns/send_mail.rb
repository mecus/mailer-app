module SendMail


 def send_mail mailer
   @name = mailer.name
   @url = "http://www.londoncityroast.com"
   @subject = "Order Confirmation"
   @html = "<div> <h3>Welcome,  #{@name}</h3>
             <p>
               Your order have been successfully created,
               your goods will be on its way to you as soon as the order is been approved.

             </p>
             <p>
               Take a look around our website, you might see something that will catch your attention.. just follow this link: #{@url}.
             </p>
             <p>Thanks and have a great day!</p>


             <h4>Sales Team</h4>
             <h5>London City Roast</h5>
            </div>"
   @text = "Welcome, #{@name}

   Your order have been successfully created,
   your goods will be on its way to you as soon as the order is been approved.

   Take a look around our website, you might see something that will catch your attention.. just follow this link: #{@url}.

   Thanks and have a great day!

   London City Roast
   Sales Team"
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
   mg_client.send_message('mail.londoncityroast.com', message_params)

  # render json: {id: response['id'], message: response['message']}

  #  redirect_to root_path

 end
end
