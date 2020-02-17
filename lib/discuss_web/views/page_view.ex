# because of 'page' namespace, Phx searches for 'page' folder in /templates
# then calls render("index.html")
defmodule DiscussWeb.PageView do
  use DiscussWeb, :view
end
