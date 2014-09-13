module NewsItemsHelper

  # Returns all news items (Nanoc::Item instances) for the given
  # language code, sorted by date (newest first).
  def news_for(language)
    items.select{|item| item.identifier =~ %r{^/#{language}/news}}.sort_by{|item| item[:date]}.reverse
  end

end
