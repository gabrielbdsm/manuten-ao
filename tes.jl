using Genie, Genie.Router, Genie.Renderer.Html, Genie.Requests

form = """
<form action="/" method="POST" enctype="multipart/form-data">
  <input type="text" name="name" value="" placeholder="What's your name?" />
  <input type="submit" value="Greet" />
</form>
"""

route("/") do
  html(form)
end

route("/", method = POST) do
  "Hello $(postpayload(:name, "Anon"))"
  return "erreg"

  return "regre"
end

up(8001, async = false)