class ComplaintList < ApplicationRecord
    belongs_to :user
    validates_presence_of :user
    resourcify
end
