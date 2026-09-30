vim.api.nvim_create_user_command('Play',
    function(opt)
        vim.system({
            'faust2caconsole',
            vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf())
        },
        { text = true })
    end,
    {})
