class MessageMailer < ApplicationMailer
  def new_message(message)
    @message = message
    @url = 'http://throop.herokuapp.com'
    mail(to: @message.email, subject: 'Website Contact!')
  end
end
