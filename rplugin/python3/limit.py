import pynvim

#@pynvim.plugin
class Limit(object):
    def __init__(self, vim):
        self.vim = vim
        self.calls = 0

    @pynvim.command('Cmd', range='', nargs='*', sync=True)
    def command_handler(self, args, range):
        self._increment_calls()
        self.vim.current.line = f'Command: Called {self.calls}, args: {args}, range: {range}'

    @pynvim.autocmd('BufEnter', pattern='*.py', eval='expand("<afile>")', sync=True)
    def autocmd_handler(self, filename):
        self._increment_calls()
        self.vim.current.line = f'Autocmd: Called {self.calls} times, file: {filename}'

    @pynvim.function('Func')
    def function_handler(self, args):
        self._increment_calls()
        self.vim.current.line = f'Function: Called {self.calls} times, args: {args}'

    def _increment_calls(self):
        if self.calls == 5:
            raise Exception('Too many calls!')
        self.calls += 1

