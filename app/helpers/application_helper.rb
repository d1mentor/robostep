module ApplicationHelper
  def user_avatar(user)
    if user.avatar.nil?
      avatar = path_to_image("avatar.jpeg")
    else
      user.avatar
    end
  end
end
