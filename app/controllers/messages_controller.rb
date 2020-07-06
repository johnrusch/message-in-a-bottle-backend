class MessagesController < ApplicationController
    def index
        messages = Message.all
        render json: messages.to_json
    end
end