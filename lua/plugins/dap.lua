vim.pack.add({
    "https://github.com/mfussenegger/nvim-dap"
})

local dap = require("dap")

-- Add PHP Adapter
dap.adapters.php = {
    type = "executable",
    command = "node",
    args = {
        vim.fn.expand("~/.local/share/nvim/vscode-php-debug/out/phpDebug.js"),
    },
}

dap.configurations.php = {
    {
        type = "php",
        request = "launch",
        name = "Listen for Xdebug",
        port = 9003,
        pathMappings = {
            ["/app"] = vim.fn.getcwd(),
        },
    },
}
