# Homestead After

Copy `after.sh` from the repo to `~/Homestead/`

Edit `~/Homestead/Vagrant` file: set `privileged` to `true`
```ruby
if File.exist? afterScriptPath then
  config.vm.provision "shell", path: afterScriptPath, privileged: true, keep_color: true
end
```

Run `vagrant provision`
