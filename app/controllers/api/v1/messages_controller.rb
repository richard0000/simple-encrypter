# frozen_string_literal: true

class Api::V1::MessagesController < ApplicationController
    def create
        message = Message.find_or_create_by(original_content: permitted_params[:content])

        render json: {
            encrypted_message: message.encrypt
        }
    end

    private

    def permitted_params
        params.require(:message).permit(:content)
    end
end
