-- pretty printing
function _G.pp(x)
  print(vim.inspect(x))
end

-- How can I import all symbols from a lua module to the global namespace?
-- https://stackoverflow.com/a/62932954/15578861
function use(module, ...)
  for k,v in pairs(module) do
    if _G[k] then
      io.stderr:write("use: skipping duplicate symbol ", k, "\n")
    else
      _G[k] = module[k]
    end
  end
end

use(math)

-- 簡易電卓機能 (Usage :C pi * 5 * 5)
-- 計算結果をシステムのコピーバッファに保存するので、どこかにペーストできる。
-- command -nargs=* C let @* = luaeval("tostring(<args>)") | echo @*
vim.api.nvim_create_user_command('C', function (args)
    vim.fn.setreg('*', tostring(load('return ' .. args.args)()))
    print(vim.fn.getreg('*'))
    --local result = load('return ' .. args.args)()
    --vim.fn.setreg('*', tostring(result))
    --print(result)
  end, {
    nargs='+',
    desc='簡易電卓機能 (Usage :P pi * 5 * 5) 計算結果をシステムバッファに保存するので、どこかにペーストできる。'
  } )
