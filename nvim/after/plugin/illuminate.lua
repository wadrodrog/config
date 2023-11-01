require('illuminate').configure({
    delay = 200,
    filetypes_denylist = {
        'dirbuf',
        'dirvish',
        'fugitive',
    },
    modes_denylist = {},
})
