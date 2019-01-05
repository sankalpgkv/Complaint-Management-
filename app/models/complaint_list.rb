class ComplaintList < ApplicationRecord
    before_save :default_values

    private
    def default_values
        self.status ||= "Pending"
    end

    belongs_to :user
    validates_presence_of :user
    validates :title, :presence => true
    resourcify
end
