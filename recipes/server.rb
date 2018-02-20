#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	content '<h1> Hello Nui </h1>
end

service 'httpd' do
	action :[ :enable, :start ]
end
	



