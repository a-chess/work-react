# frozen_string_literal: true

module API
  module V1
    module Helpers
      module AuthenticateHelper
        def authenticate_error!
          # 認証が失敗したときのエラー
          h = { 'Access-Control-Allow-Origin' => '*',
                'Access-Control-Request-Method' => %w[GET POST OPTIONS].join(',') }
          error!('You need to log in to use the app.', 401, h)
        end

        def authenticate_user!
          # header から認証に必要な情報を取得
          uid = request.headers['Uid']
          token = request.headers['Access-Token']
          client = request.headers['Client']
          @user = ::User.find_by_uid(uid)

          # 認証に失敗したらエラー
          authenticate_error! unless @user&.valid_token?(token, client)
        end

        def current_user
          return @user if @user.present?

          uid = request.headers['Uid']
          @user = ::User.find_by_uid(uid)
        end
      end
    end
  end
end
