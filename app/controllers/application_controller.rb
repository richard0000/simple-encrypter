class ApplicationController < ActionController::API
    def index
        render json: {
            connected: "ok"
        }
    end
end
