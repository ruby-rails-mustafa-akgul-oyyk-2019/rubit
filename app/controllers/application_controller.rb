class ApplicationController < ActionController::Base
  #http_basic_authenticate_with name: "test", password: "1234"
  #
  def default_url_options
    { locale: I18n.locale }
  end

  before_action :calculate_page_counter

  around_action :switch_locale

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  def calculate_page_counter
    cookies[:page_counter] = cookies[:page_counter].to_i.next
    redirect_to post_path(1) if cookies[:page_counter] === 100
  end
end
