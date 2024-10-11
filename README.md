# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
<%= link_to 'About Page', about_path %>
<%= link_to 'Articles/Blogs Listing', articles_path %>



<% if @article.errors.any? %>
  <div class="alert alert-danger alert-dismissible fade show" role="alert">
    <strong>The following errors prevented the article from being saved</strong>
    <ul>
      <% @article.errors.full_messages.each do |msg| %>
        <li><%= msg %></li>
      <% end %>
    </ul> 
    <button type="button" class="close" data-dismiss="alert" aria-label="Close" style="outline: none;">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      $('.alert').alert()
    })
  </script>
<% end %>