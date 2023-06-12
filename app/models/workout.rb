class Workout < ActiveRecord::Base
    belongs_to :user
    has_many :exercises
    # attr_accessor :image
end
    