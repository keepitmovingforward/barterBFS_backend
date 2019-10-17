class UserSerializer < ApplicationController

    def initialize(user_object)
      @user = user_object
    end

    def to_serialized_json
      @user.to_json({
        :include => {items: {except: [:created_at, :updated_at, :user_id]},
                    sentBarters: {except: [:created_at, :updated_at, :sender_id]},
                    recdBarters: {except: [:created_at, :updated_at, :recipient_id]}
                  },
        :except => [:created_at, :updated_at]})
    end

end
