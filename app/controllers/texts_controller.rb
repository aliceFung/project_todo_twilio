class TextsController < ApplicationController




  def send_text

    # acct_sid = ENV["twilio_sid"]
    # auth_token = ENV["twilio_auth_token"]
    @client = Twilio::REST::Client.new ENV["twilio_sid"], ENV["twilio_auth_token"]
    @client.messages.create( from: '', #set num
      to: '', #set number
      body: "string" #through params
      )
    # msg.to
	end

  private

  def params_body

  end



end
