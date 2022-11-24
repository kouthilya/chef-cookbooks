cron 'cookbooks_report' do
  action :create
  minute '0'
  hour '0'
  weekday '1'
  user 'getchef'
  mailto 'sysadmin@example.com'
  home '/srv/supermarket/shared/system'
  command %W{
    cd /srv/supermarket/current &&
    env RUBYLIB="/srv/supermarket/current/lib"
    RAILS_ASSET_ID=`git rev-parse HEAD` RAILS_ENV="#{rails_env}"
    bundle exec rake cookbooks_report
  }.join(' ')
end
