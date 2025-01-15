def _parse_macros(self):
    self._iter_lines(self._parce_macro)

def _mv(self, A, B):
    l = ["@"+A, "D=M", "@"+B, "M=D"]
    return l

def _swp(self, A, B):
    l = ["@temp", "M=0", "@"+A, "D=M", "@temp", "M=D", "@"+B, "D=M", "@"+A, "M=D", "@temp", "D=M", "@"+B, "M=D"]
    return l

def _add(self, A, B, D):
    l = ["@"+A, "D=M", "@"+B, "D=M+D", "@"+D, "M=D"]
    return l

def _while(self, A):
    self._cnt += 1
    l = ["(WHILE" + str(self._cnt) + ")", "@"+A, "D=M", "@END" + str(self._cnt), "D;JEQ"]
    return l

def _parse_macro(self, line, p, o):
    if line[0] == "$":
        lines = line[1:].split("(")
        macro = lines[0]
        if len(lines) > 1:
            argumenti = lines[1]
            argumenti_lista = argumenti.replace(")", "".split(","))
            if macro == "MV":
                l = self._mv()
                return l
            elif macro == "SWP":
                l = self._swp
                return l
            elif macro == "ADD":
                l = self._add
                return l
            elif macro == "WHILE":
                l = self._while(argumenti_lista[0])
                return l
            else:
                self._flag = False
                self._line = o
                self._errm = "Invalid macro"
            
    else:
        return l