class MessagesController < ApplicationController

	def index
		
	end

	def new
		@message = Message.new
	end

	def create
		@message = Message.new(message_params)

		if @message.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def update
		
	end	
	
	def show
		
	end
	

	def destroy
		
	end

	private

	def message_params
		params.require(:message).permit(:title, :description)
	end
end