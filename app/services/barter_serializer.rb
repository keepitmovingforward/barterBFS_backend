class BarterSerializer < ApplicationController

    def initialize(barter_object)
      @barter = barter_object
    end

    def to_serialized_json
      @barter.to_json({
        :include => {items: {except: [:created_at, :updated_at]},
                    recipient: {only: [:id, :name, :username, :prof_pic]},
                    sender: {only: [:id, :name, :username, :prof_pic]}
                    },
        :except => [:created_at, :updated_at]})
    end


end
