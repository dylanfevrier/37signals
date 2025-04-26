module MessageHelper
  def display_date(created_at)
    return "" unless created_at

    if created_at.today?
      created_at.strftime("%H:%M")
    else
      created_at.strftime("%b %d")
    end
  end

  def initials(name)
    name = name.to_s.strip

    return "?" if name.blank?

    name.split(/[ \-]/)
      .map { |word| word[0] }
      .join
      .upcase
  end

  def summarize_body(body)
    clean_body = body.to_s.gsub(/\\n|\n/, " ").squeeze(" ")
    truncate(clean_body, length: 95)
  end
end
