module ApplicationHelper
  def homepage?
    params[:controller] == 'pages' && params[:action] == 'home'
  end

  def signin_page?
    params[:controller] == 'devise/sessions' && params[:action] == 'new'
  end

  def avatar?
    if current_user.photo.attached?
      current_user.photo
    elsif current_user.avatar_url?
      current_user.avatar_url
    else
      "https://pdtxar.com/wp-content/uploads/2019/04/person-placeholder.jpg"
    end
  end
end
