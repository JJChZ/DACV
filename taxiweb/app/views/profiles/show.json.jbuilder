<p id="notice"><%= notice %></p>

<p>
  <strong>First name:</strong>
  <%= @profile.first_name %>
</p>

<p>
  <strong>Last name:</strong>
  <%= @profile.last_name %>
</p>

<p>
  <strong>Born at:</strong>
  <%= @profile.born_at %>
</p>

<p>
  <strong>User:</strong>
  <%= @profile.user %>
</p>

<%= link_to 'Edit', edit_profile_path(@profile) %> |
<%= link_to 'Back', profiles_path %>
