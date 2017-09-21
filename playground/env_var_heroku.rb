# IMPORTANT: only list the apps that your user can see!
def heroku_apps
  `heroku apps`.split($/).map { |app| app[0..app.index(' (')-1] if app.index(' (') }.compact
end

def update_heroku_env(app, env = {}, override_not_empty = false, exec_cmd = false)
  puts "\e[33m[WARNING] this will be executed for real (CTRL-C to stop now)\e[0m" if exec_cmd
  puts "\e[33m[WARNING] this will override values if existis\e[0m" if override_not_empty
  puts app
  new_env = {}
  pad = env.keys.map { |key| key.to_s.length }.max
  env.each do |var, new_val|
    current = `heroku config:get --app #{app} #{var}`.delete("\n")
    print " #{var.to_s.ljust(pad)} = [current: #{current} | new: "
    if !override_not_empty && !current.to_s.empty? then
      puts '-- skipped: var has value --]'
    else
      puts "#{new_val}]"
      new_env[var] = new_val
    end
  end
  env_str = new_env.map { |var, val| "#{var}=#{val}" }.join(' ')
  update_cmd = "heroku config:set --app #{app} " + env_str
  if exec_cmd && !env_str.empty?
    system update_cmd
  else
    puts "\e[32m[INFO] this was just a dry run and here is the command:\e[0m"
    puts update_cmd
  end
end

apps = heroku_apps
env = { }
override_not_empty = false
exec_cmd = true
apps.each { |app| update_heroku_env(app, env, override_not_empty, exec_cmd ) }
