class Users::RegistrationsController < Devise::RegistrationsController
  protected

  # アカウント削除後のリダイレクト先を設定
  def after_destroy_path_for(resource_or_scope)
    root_path # 削除後にトップページへ遷移
  end
end
