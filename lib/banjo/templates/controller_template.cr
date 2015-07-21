class <%= NAME %>Controller < ApplicationController
<% ACTIONS.each do |action| %>
  def <%= action %>
  end
<% end %>
end