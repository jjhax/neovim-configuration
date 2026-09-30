vim.pack.add({
    "https://github.com/rcarriga/nvim-dap-ui"
})

local ui = require("dapui")
local dap = require("dap")

ui.setup()
vim.fn.sign_define("DapBreakpoint", { text = "🐞" })

dap.listeners.before.attach.dapui_config = function()
	ui.open()
end

dap.listeners.before.launch.dapui_config = function()
	ui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
	ui.close()
end

dap.listeners.before.event_exited.dapui_config = function()
	ui.close()
end

