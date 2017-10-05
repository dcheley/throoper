class MessageMailer < ApplicationMailer
  def new_message(message)
    @message = message
    @url = 'http://throop.herokuapp.com'
    mail(to: 'cheleydan@gmail.com', subject: 'Website Contact!')
  end
end
