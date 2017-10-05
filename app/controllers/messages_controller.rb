class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        MessageMailer.new_message(@message).deliver_later
        format.html { redirect_to(new_message_url, notice: "Thanks for reaching out!") }
        format.json { render json: new_message_url, status: :created, location: new_message_url }
      else
        format.html { render 'new' }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def message_params
    params.require(:message).permit(:name, :email, :phone, :msg)
  end
end
