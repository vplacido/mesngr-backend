class Message < ApplicationRecord
    belongs_to :reciever
    belongs_to :sender
end
