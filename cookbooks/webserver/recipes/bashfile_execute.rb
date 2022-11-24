bash 'Execute my script' do 
  user 'root'
  cwd  '/mydir'
  code <<-EOH
    ./myscript.sh
  EOH
end

bash 'Execute my script' do 
  user 'root'
  cwd  '/mydir'
  code <<-EOH
    ./myscript.sh
    ls srini ##This will fail
    ls  ## this will be successful
  EOH
end
