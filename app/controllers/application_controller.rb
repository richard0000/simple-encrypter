class ApplicationController < ActionController::API
    def index
        render json: {
            connected: "ok",
            available_endpoints: {
                method: "POST",
                uri: Rails.root.join("/api/v1/encrypt")
            }
        }
    end
end
