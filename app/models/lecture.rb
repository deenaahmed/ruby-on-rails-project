class Lecture < ApplicationRecord
    belongs_to :course
    has_and_belongs_to_many :users
    acts_as_commontable
    mount_uploader :attachement, AvatarUploader
end
