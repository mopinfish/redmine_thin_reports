Redmine::Plugin.register :redmine_thin_reports do
  name 'Redmine Thin Reports plugin'
  author 'Noboru Otsuka'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/mopinfish/redmine_thin_reports'
  author_url 'https://github.com/mopinfish'

  #アプリケーションメニューに「ユーザー表示」を表示する
  menu :application_menu, :redmine_thin_reports, { :controller => 'show', :action => 'index' }, :caption => 'ユーザー表示', :if => Proc.new { User.current.logged? }
end