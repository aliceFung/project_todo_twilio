class TextsController < ApplicationController

  	def send_text
	   	a = Todo.find(params[:id])
	    acct_sid = ENV["twilio_sid"]
	    auth_token = ENV["twilio_auth_token"]
	    from_ph = ENV["twilio_num"]
	    to_ph = ENV["my_phone"]
	    @client = Twilio::REST::Client.new acct_sid, auth_token
	    if @client.messages.create(from: from_ph,
	      to: to_ph,
	      body: a.text
	      )
	    	flash[:success] = "Text sent"
	    else
	    	flash[:error] = "Could not send text"
	    end
	    redirect_to todos_path
	end

end
