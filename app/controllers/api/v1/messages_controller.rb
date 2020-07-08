class Api::V1::MessagesController < ApplicationController
    def index
        messages = Message.all
        render json: messages.to_json
    end

    #testing
end