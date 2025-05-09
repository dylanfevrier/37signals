require "test_helper"

class MessageControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unread_message = messages(:received_unread)
    @read_message = messages(:received_read)
  end

  test "displays new and previously seen sections with their messages" do
    get root_url
    assert_response :success

    assert_select "h2", text: "New for you"
    assert_select "h2", text: "Previously seen"

    assert_select "h3", text: /#{@unread_message.subject}/
    assert_select "h3", text: /#{@read_message.subject}/
  end

  test "displays empty state when there are no unread messages" do
    Message.update_all(read_at: Time.current)

    get root_url
    assert_response :success

    assert_select "h2", text: "New for you", count: 0
    assert_select "h2", text: "Nothing new for you."
  end

  test "hides previously seen section when there are no read messages" do
    Message.update_all(read_at: nil)

    get root_url
    assert_response :success

    assert_select "h3", text: "Previously Seen", count: 0
  end

  test "shows and marks an unread message as read" do
    get message_show_path(@unread_message)
    assert_response :success

    assert_select "h1", text: @unread_message.subject

    @unread_message.reload

    assert_not_nil @unread_message.read_at
  end

  test "shows a read message without changing read_at" do
    previous_read_at = @read_message.read_at

    get message_show_path(@read_message)
    assert_response :success

    assert_select "h1", text: @read_message.subject

    @read_message.reload

    assert_equal @read_message.read_at, previous_read_at
  end
end
