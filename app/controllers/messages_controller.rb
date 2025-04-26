class MessagesController < ApplicationController
  before_action :set_message, only: [ :show ]
  def index
    @messages = Message.order(read_at: :asc, created_at: :desc)
    @has_unread_messages = @messages.any?(&:unread?)
  end

  def show
    @message.mark_as_read! if @message.unread?
  end

  private

  def set_message
    @message = Message.find(params[:id])
  end
end
