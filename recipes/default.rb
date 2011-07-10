case node[:platform]
when "debian", "ubuntu"
  package "git-core"
else 
  package "dev-vcs/git"
end

cookbook_file "/etc/gitconfig" do
  source "gitconfig"
  owner "root"
  group "root"
  mode "0644"
end
