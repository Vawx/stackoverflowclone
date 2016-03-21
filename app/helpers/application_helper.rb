module ApplicationHelper
  define_method :getAllTags do |tags|
    return ( !tags.nil? ) ? tags.split(',') : []
  end
end
