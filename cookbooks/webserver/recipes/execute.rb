execute 'apache_configtest' do
  command '/usr/sbin/apachectl configtest'
end

execute 'Execute my script' do 
  user    'root'
  cwd     '/mydir'
  command './myscript.sh'
end

execute 'Execute my script' do 
  user    'root'
  cwd     '/mydir'
  command './myscript.sh'
  command 'ls srini' #will fail
  command 'ls' # will be successful
end
