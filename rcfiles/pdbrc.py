# Yunfan pdbrc py file

import pdb
import rlcompleter
# auto complete use tab
pdb.Pdb.complete = rlcompleter.Completer(locals()).complete


class Config(pdb.DefaultConfig):
    prompt = '(pdb) '
    sticky_by_default = False
    editor = 'vi'
    filename_color = pdb.Color.lightgray
    use_terminal256formatter = False

    def __init__(self):
        import readline
        readline.parse_and_bind('set convert-meta on')
        readline.parse_and_bind('Meta-/: complete')
