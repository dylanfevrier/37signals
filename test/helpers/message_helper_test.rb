require "test_helper"

class MessageHelperTest < ActionView::TestCase
  test "display_date returns time for today" do
    created_at = Time.current
    assert_equal created_at.strftime("%H:%M"), display_date(created_at)
  end

  test "display_date returns month and day for past date" do
    created_at = Time.current - 1.days
    assert_equal created_at.strftime("%b %d"), display_date(created_at)
  end

  test "display_date returns empty string for nil" do
    assert_equal "", display_date(nil)
  end

  test "initials extracts initials correctly" do
    assert_equal "J", initials("John")
    assert_equal "DF", initials("Dylan Fevrier")
    assert_equal "DHH", initials("David Heinemeier Hansson")
  end

  test "initials returns ? for blank name" do
    assert_equal "?", initials("")
    assert_equal "?", initials(nil)
  end

  test "summarize_body truncates long body" do
    long_text = "Lorem ipsum dolor sit amet " * 10
    assert_operator summarize_body(long_text).length, :<=, 80
  end

  test "summarize_body handles nil body" do
    assert_equal "", summarize_body(nil)
  end
end
