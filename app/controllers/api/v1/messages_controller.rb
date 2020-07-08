class Api::V1::MessagesController < ApplicationController
    def index
        messages = Message.all
        render json: messages.to_json
    end

    def new
        message = Message.new
    end

    def create
        message = Message.create(message_params)
        render json: message.to_json
    end

    def destroy
        message = Message.find(params[:id])
        message.destroy
        render json: message.to_json
    end

    private

    def message_params
        params.require(:message).permit(:content, :sender_user_id, :receiver_user_id)
    end
end