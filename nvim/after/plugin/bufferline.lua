local bufferline = require("bufferline")
bufferline.setup {
    options = {
        separator_style = "slope",
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        }
    }
}
