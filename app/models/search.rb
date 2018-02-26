class Search < ApplicationRecord
  attr_accessor :result

  def find_records search
    @question = Question.where('title LIKE ?', '%' + search + '%')
    @news = News.where('title LIKE ?', '%' + search + '%')
    @records = @question + @news
    @records = @records.sort_by(&:created_at).reverse!
    @result = @records
  end
end
