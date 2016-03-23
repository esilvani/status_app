class Friend < ActiveRecord::Base
  belongs_to :follower, class_name: "Person"
  belongs_to :following, class_name: "Person"
end
