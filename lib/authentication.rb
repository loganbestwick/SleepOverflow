module Authentication
  include Twitter::Autolink

  def current_user
    # anywhere that you're using @user, you should be using current_user
    if session['access_token'] && session['access_secret']
      @user = client.user(include_entities: true)
    end
  end
end
