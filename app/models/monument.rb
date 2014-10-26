class Monument < ActiveRecord::Base
  belongs_to :category
  belongs_to :collection

  validates :category_id, presence: true, if: 'new_category_name.nil?'
  validates :name, length: { minimum: 2 }

  def new_category_name=(value)
    if value.is_a?(String) && !value.empty?
      # check category name exists
      new_category_id = Category.where(name: value).first.try(:id)
      if new_category_id.nil?
        new_category_id = Category.create!(name: value).id
      end

      self.category_id = new_category_id
    end
  end

  def new_category_name
    ''
  end
end
