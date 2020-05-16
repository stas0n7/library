class TitleDecorator < ApplicationDecorator
  delegate_all

  def books_titles
    books.map(&:title).join(', ')
  end

end
