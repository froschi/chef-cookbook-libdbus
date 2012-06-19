packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    libdbus-1-3
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
