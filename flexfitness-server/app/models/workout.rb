class Workout < ActiveRecord::Base
    belongs_to :user
    attr_accessor :image
end
    