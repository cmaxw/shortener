class UrlObserver < ActiveRecord::Observer
  observe [:url, :visit]

  def before_create(url)
    print_message "--- OBSERVER #{url.inspect} ---"
    false if url.slug == "visits"
  end

  def print_message(msg)
    puts msg
  end
end
