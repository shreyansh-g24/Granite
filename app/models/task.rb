class Task < ApplicationRecord
  enum state: %w[open in_progress done]
  belongs_to :user, foreign_key: :assignee_id
  has_many :comments, dependent: :destroy
  has_one :attachment, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachment, allow_destroy: true

  before_validation :assign_description, unless: :description_present

  validates :description, presence: true

  def assign_description
    self.description = 'No task description provided!'
  end

  def description_present
    description.present?
  end
end
