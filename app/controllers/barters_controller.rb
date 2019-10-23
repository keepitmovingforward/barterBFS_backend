class BartersController < ApplicationController


  def pendingBarters
    barters = Barter.all.select{|barter| barter.barter_status == "requested"}
    render json: BarterSerializer.new(barters).to_serialized_json
  end

  def update
    barter = Barter.find(params["id"])
    barter.update(barter_status: "accepted")
    senderId = params["sender_id"]
    recipientId = params["recipient_id"]

    params["items"].each { |item|
      updateItem = Item.find(item["id"])
      if(senderId == updateItem["user_id"])
        updateItem.update(user_id: recipientId)
      else
        updateItem.update(user_id: senderId)
      end
    }
    users = User.all
    barters = Barter.all.select{|barter| barter.barter_status == "requested"}
    barters.each { |barter|
      barter.items.each {|item|
        if (item.user_id != barter.recipient.id && item.user_id != barter.sender.id)
          barter.update(barter_status: "cancelled")
        end
      }
    }

    updatedBarters = Barter.all.select{|barter| barter.barter_status == "requested"}

    #JSON.parse before these two key values is clutch when sending multiple json
    #objects over a single render JSON
    render json: {
      users: JSON.parse(UserSerializer.new(users).to_serialized_json),
      barters: JSON.parse(BarterSerializer.new(updatedBarters).to_serialized_json)
    }
  end

end
