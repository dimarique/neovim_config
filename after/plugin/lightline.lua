vim.g.lightline = {
    colorscheme = 'everforest',
    active = {
        left = { { 'modified' }, { 'mode', 'paste' }, { 'readonly', 'path' } }
    },
    tabline = {
        left = { { 'buffers' } },
        right = { { 'close' } }
    },
    component_expand = {
        buffers = 'lightline#bufferline#buffers'
    },
    component_type = {
        buffers = 'tabsel'
    },
    component = {
        path = '%F'
    }
}
