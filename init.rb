unless File.basename(File.dirname(__FILE__)) == 'fzb_progressive_projects_list'
  raise "Progressive Project List plugin directory should be 'fzb_progressive_projects_list' instead of '#{File.basename(File.dirname(__FILE__))}'"
end

Redmine::Plugin.register :progressive_projects_list do
  name 'Progressive Projects List plugin'
  author 'Peter Du & Dmitry Babenko'
  description 'Projects List with menus and progress bars.'
  version '3.1.1'
  url 'http://github.com/fzbTech/redmine-progressive-projects-list/'
  author_url 'https://github.com/fzbtech'
  requires_redmine :version_or_higher => '3.4'

  settings :default => {
    'show_project_description'  => false,
    'show_project_progress'     => true,
    'show_project_menu'         => false,
    'show_only_for_my_projects' => false,
    'show_recent_projects'      => true,
    'show_project_progress_overview' => ''
  }, :partial => 'settings/progressive_projects_list'
end

require 'progressive_projects_list'
require 'progressive/application_helper_patch'
require 'progressive/projects_helper_patch'
require 'progressive/projects_list_view_listener'
require 'progressive/recent_projects_view_listener'
