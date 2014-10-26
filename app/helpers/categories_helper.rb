module CategoriesHelper
  def categories_collection
    collection = []
    Category.all.order(name: :asc).each do |category|
      collection << [category.name, category.to_param]
    end
    collection
  end
end
