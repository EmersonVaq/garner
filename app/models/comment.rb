class Comment < ActiveRecord::Base
  belongs_to :vent
  belongs_to :user
end
