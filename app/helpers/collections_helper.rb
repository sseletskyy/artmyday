module CollectionsHelper
  # check params[:display_as] and return 'list' or 'cover'
  # used in taking decision which partial to render
  def display_as
    %w(list cover).include?(params[:display_as]) ? params[:display_as] : 'cover'
  end
end
