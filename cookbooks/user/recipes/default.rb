#
# Cookbook Name:: user
# Recipe:: default
#
# Copyright 2014, JURUJURUboy
#
# All rights reserved - Do Not Redistribute
#

data_ids = data_bag("users")
data_ids.each do |id|
  u = data_bag_item("users", id)
  user u["id"] do
    shell    u["shell"]
    password u["password"]
    supports :manage_home => true, :non_unique => false
    action   [:create]
  end
end

group "users" do
  group_name "users"
  members    ["kkuraya"]
  action     [:create]
end

