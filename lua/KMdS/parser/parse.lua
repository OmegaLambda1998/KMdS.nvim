local M = {}

local a = require("plenary.async")

local function read_file(path)
    local err, fd = a.uv.fs_open(path, "r", 438)
    assert(not err, err)

    local err, stat = a.uv.fs_stat(fd)
    assert(not err, err)

    local err, data = a.uv.fs_read(fd, stat.size, 0)
    assert(not err, err)

    local err = a.uv.fs_close(fd)
    assert(not err, err)

    return data
end

local function parse(file)
    local md = read_file(file)
    vim.print(md)
end

function M.setup(opts)
    return parse
end

return M
