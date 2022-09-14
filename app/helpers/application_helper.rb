module ApplicationHelper
  def homepage?
    params[:controller] == 'pages' && params[:action] == 'home'
  end

  def signin_page?
    params[:controller] == 'devise/sessions' && params[:action] == 'new'
  end

  def current_user_avatar?
    if current_user.photo.attached?
      current_user.photo
    elsif current_user.avatar_url?
      current_user.avatar_url
    else
      "https://pdtxar.com/wp-content/uploads/2019/04/person-placeholder.jpg"
    end
  end

  # NOT SURE WHY THIS WASN'T WORKING - USING TERNARY OPERATOR W/O user.photo.attached? now instead
  # def event_member_avatar?
  #   if event_member.user.avatar_url?
  #     event_member.user.avatar_url
  #   elsif event_member.user.photo.attached?
  #     event_member.user.photo
  #   else
  #     "https://pdtxar.com/wp-content/uploads/2019/04/person-placeholder.jpg"
  #   end
  # end
end
