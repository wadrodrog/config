require('bufferline').setup({
    options = {
        right_mouse_command = nil,
        middle_mouse_command = 'bdelete! %d',
        separator_style = 'slope',
        indicator = {
            style = 'underline',
        },
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
    }
})
