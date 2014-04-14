package 'htop'
package 'vim'
package 'unzip'
package 'bash'
package 'gawk'
package 'sed'
package 'grep'
package 'tar'
package 'curl'
package 'git'

# Add additional locales
if node[:locales]
  node[:locales].each do |locale|
    bash "adding #{locale} to /var/lib/locales/supported.d/local" do
      user 'root'
      echo locale >> "/var/lib/locales/supported.d/local"
    end
  end
  bash "Including new locales" do
    code <<-EOC
       dpkg-reconfigure locales
       update-locale
    EOC
  end
end

template "/home/#{node[:username]}/.gitconfig" do
  owner node[:username]
  group node[:usergroup]
  mode "0644"
  source "git_config.erb"
end
