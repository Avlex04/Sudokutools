from bottle import run, route, template, static_file, request
import os

@route("/")
def Sudkoku():
    cwd = os.getcwd()

    print("CWD= "+str(cwd))

    return template("Sudoku.tpl")


@route("/static/<filename>")
def server_static(filename):
    return static_file(filename, root="/stylesheet")


run(debug=True, reloader=True)
