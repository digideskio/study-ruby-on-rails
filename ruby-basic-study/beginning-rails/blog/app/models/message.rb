class Message < ActiveRecord::Base
  has_many :attachments
end
