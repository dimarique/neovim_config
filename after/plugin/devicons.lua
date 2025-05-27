require('nvim-web-devicons').setup {
  override = {
    html = {
      icon = "", -- Задай свою иконку
      color = "#E34C26", -- Цвет
      name = "html",
    },
    css = {
      icon = "", -- Это флаг CSS3
      color = "#264de4",
      name = "css",
    },
  },
  default = true, -- Использовать иконки по умолчанию, если расширение не настроено
}
