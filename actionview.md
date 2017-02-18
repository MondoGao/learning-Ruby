# ActionView
```erb
<%= link_to "Delete", person, method: :delete, data: { confirm: "Really?" } %>
<a data-confirm="Really?" rel="nofollow" data-method="delete" href="/people/1">Delete</a>

<%= render :partial => "post", {:locals => {:post => post}} %>

<%= render :partial => "post", :collection => @posts %>

```