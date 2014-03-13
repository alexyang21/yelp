module ApplicationHelper
  def stars(avg_rating)
    symbols = ""
    avg_rating.floor.times do
      symbols += "* "
    end

    symbols += "#{pluralize(avg_rating, "star")}"
    return symbols
  end
end
