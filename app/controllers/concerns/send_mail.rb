module SendMail

  def admin_mail mailer
    @name = mailer.name
    @email = "tigransky@yahoo.com"
    @emailcc = "londoncityroast@gmail.com"
    @url = "http://www.londoncityroast.com/login"
    @subject = "Order Notification"
    @custmail = mailer.email
    @html = "<h2>#{@name}</h2> <p> just placed an order on your website, login to admin panel to see the order details.. #{@url}
      customer's email address: #{@custmail}
    </p> "
    @text = "#{@name} just placed an order on your website, login to admin panel to see the order details.. #{@url} customer's email address: #{@custmail}"

    mg_client = Mailgun::Client.new "key-cce6e3f42d7ff17ae0c0bf12e579f595"

    # Define your message parameters
    message_params =  { from: 'London City Roast <mailgun@mail.londoncityroast.com>',
                        to:   @email,
                        bcc: @emailcc,
                        subject: @subject,
                        text: @text,
                        html: @html
                      }

    # Send your message through the client
    mg_client.send_message('mail.londoncityroast.com', message_params)
  end

 def send_mail mailer
   @name = mailer.name
   @url = "http://www.londoncityroast.com"
   @subject = "Order Confirmation"
   @html = "<div> <h3>Welcome,  #{@name}</h3>
             <p>
               Your order was successfully created,
               your goods will be on its way to you as soon as we approved the order and process the payment.

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
   your goods will be on its way to you as soon as we approved the order and process the payment.

   Take a look around our website, you might see something that will catch your attention.. just follow this link: #{@url}.

   Thanks and have a great day!

   London City Roast
   Sales Team"
   @email = mailer.email
  #  First, instantiate the Mailgun Client with your API key
   mg_client = Mailgun::Client.new "key-cce6e3f42d7ff17ae0c0bf12e579f595"

   # Define your message parameters
   message_params =  { from: 'London City Roast <mailgun@mail.londoncityroast.com>',
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
