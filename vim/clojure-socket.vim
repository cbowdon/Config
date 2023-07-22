vim9script
# Commands to send range to Clojure socket server, which is assumed to be localhost:5555.
# Requires Bash and netcat (nc).
# Reminder: use :source /path/to/this/file to eval this file

def BufferText(): string
    const line_end = line("$")
    const lines = getline(0, line_end)
    return join(lines, "\n")
enddef

def VisualSelection(): string
    const line_start = line("'<")
    const line_end = line("'>")
    const lines = getline(line_start, line_end)
    return join(lines, "\n")
enddef

def SendClj(expression: string): string
    const body = shellescape(expression)
    const request = "nc localhost 5555 < <(echo " .. body .. ")"
    const response = system(request)
    return response
enddef

def CljSelected()
    const text = VisualSelection()
    const response = SendClj(text)
    :echo response
enddef

def CljBuffer()
    const text = BufferText()
    const response = SendClj(text)
    :echo response
enddef

def StartSocketRepl()
    const body = "clojure -J-Dclojure.server.repl=\"{:port 5555 :accept clojure.core.server/io-prepl}\""
    const response = system(shellescape(body))
    :echo response
enddef

defcompile

command! -range=% CljSelected CljSelected()
command! -range=% CljBuffer CljBuffer()
command! StartClj StartSocketRepl()

echom "Evaluated clojure-socket.vim"
