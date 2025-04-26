class Message < ApplicationRecord
  validates :from_name, :from_email, :to_email, :subject, presence: true

  scope :unread, -> { where(read_at: nil) }
  scope :read, -> { where.not(read_at: nil) }

  def mark_as_read!
    update!(read_at: Time.current) if unread?
  end

  def read?
    read_at.present?
  end

  def unread?
    !read?
  end
end
