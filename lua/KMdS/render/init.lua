local M = {}

M.default_config = {}

function M.setup(opts)
    opts = vim.tbl_deep_extend("force", M.default_config, opts or {})
end

return M
