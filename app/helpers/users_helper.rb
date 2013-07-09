require 'digest/md5'

module UsersHelper

  def gravatar_for user
    digest = Digest::MD5.hexdigest(user.email)
    image_tag("http://gravatar.com/avatar/#{digest}?s=48")
  end
end