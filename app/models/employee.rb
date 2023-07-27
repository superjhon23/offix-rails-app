class Employee < ApplicationRecord
  belongs_to :department, counter_cache: true #Self join
  belongs_to :manager, class_name: "Employee", optional: true
  has_many :reports, class_name: "Employee", foreign_key: "manager_id", dependent: :destroy, inverse_of: "manager"
  has_one_attached :avatar
  #Polymorphic associations
  has_many :feedbacks, dependent: :destroy
  has_many :receive_feedbacks, class_name: "Feedback", as: :feedbackable, dependent: :destroy
end
