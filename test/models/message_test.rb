require "test_helper"

class MessageTest < ActiveSupport::TestCase
  test "message can be marked as read" do
    message = messages(:received_unread)

    assert_not message.read?
    message.mark_as_read!

    assert message.read?
  end

  test "read message keeps its read date when marked again" do
    message = messages(:received_read)
    original_read_at = message.read_at

    message.mark_as_read!
    assert_equal original_read_at, message.read_at
  end
end
