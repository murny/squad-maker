# frozen_string_literal: true

class Player < ApplicationRecord
  validates :first_name, :last_name, :skating, :shooting, :checking, presence: true

  def average_skill
    (skating + shooting + checking) / 3
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
