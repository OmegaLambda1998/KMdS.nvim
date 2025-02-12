local M = {}

M.default_config = {
    parser = {},
    render = {},
}

function M.setup(opts)
    opts = vim.tbl_deep_extend("force", M.default_config, opts or {})
    M.parser = require("KMdS.parser").setup(opts.parser)
    M.render = require("KMdS.render").setup(opts.render)
end

return M
