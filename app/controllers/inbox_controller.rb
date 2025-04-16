class InboxController < ApplicationController
  def index
    @new_messages = Message.unread.order(created_at: :desc)
    @seen_messages = Message.read.order(created_at: :desc)
  end

  def show
    @message = Message.find(params[:id])
    @message.mark_as_read!
  end
end
