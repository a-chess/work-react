module AuthenticationHelper
  def authenticate(user)
    post '/api/v1/auth/sign_in', { email: user.email, password: 'password' }

    header 'client', last_response.headers['client']
    header 'access-token', last_response.headers['access-token']
    header 'uid', last_response.headers['uid']
  end
end