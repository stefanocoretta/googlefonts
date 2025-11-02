
function Meta(meta)
  if meta.googlefonts then
    local fonts = meta.googlefonts

    local font_list = {}

    if type(fonts ) == "table" then
      for i, font in ipairs(fonts) do
        font_str = pandoc.utils.stringify(font)

        font_str = string.gsub(font_str, " ", "+") 

        if not string.find(font_str, ":") then
          font_str = font_str .. ":ital,wght@0,400;0,700;1,400;1,700"
        end

        font_list[#font_list+1] = "family=" .. font_str

      end
    end

    local font_url = "https://fonts.googleapis.com/css2?" .. table.concat(font_list, "&") .. "&display=swap"
    -- quarto.log.output(font_url)

    quarto.doc.add_html_dependency({
      name = "google-fonts",
      version = "1.0.0",
      links = {
        { rel = "preconnect", href = "https://fonts.googleapis.com" },
        { rel = "preconnect", href = "https://fonts.gstatic.com", crossorigin = ""},
        { rel = "stylesheet", href = font_url}
      }
    })
  end
  return meta
end


