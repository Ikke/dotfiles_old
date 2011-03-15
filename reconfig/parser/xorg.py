import re

class Xorg(object):

    def parse(self, lines):
        state = BaseState({})
        for line in lines:
            line = line.strip()
            if not line == "":
                state = state.parse_line(line)
        return state.data


class State(object):
    def __init__(self, data):
        self.data = data

    def parse_line(self, line):
        elem = line.split(" ")[0].strip().lower()
        method = result = None

        try:
            method = getattr(self, elem)
        except AttributeError:
            print "Non implemented method: " + self.__class__.__name__ + "." + elem

        if method:
            result = method(line)
        return result or self


class Section(object):
    def __init__(self, name):
        self.name = name

class BaseState(State):
    def section(self, line):
        section_name = line.split(" ")[1].strip("\"")
        return SectionState(self.data, Section(section_name))

class SectionState(State):
    def __init__(self, data, section):
        State.__init__(self, data)
        self.section_obj = section

    def identifier(self, line):
        matches = re.search('\w+\s+"([^"]+)', line)
        self.section_obj.identifier = matches.group(1)

    def screen(self, line):
        """TODO: Expand for other possibilities"""
        matches = re.match('\w+\s+(\d*)\s+"([^"]+)"\s(\d+)\s+(\d+)', line)
        self.section_obj.screen = {matches.group(0): {
            "identifier": matches.group(1),
            "x": matches.group(2),
            "y": matches.group(3)
        }}

    def option(self, line):
        matches = re.match('\w+\s+"([^"]+)"\s+"([^"]+)"', line)
        if not hasattr(self.section_obj, "options"):
            self.section_obj.options = {}

        self.section_obj.options[matches.group(0)] = matches.group(1)

    def driver(self, line):
        print "TODO: driver"



    def endsection(self, line):
        if not self.data.has_key(self.section_obj.name):
            self.data[self.section_obj.name] = {}

        if hasattr(self.section_obj, "identifier"):
            self.data[self.section_obj.name][self.section_obj.identifier] = self.section_obj
        else:
            self.data[self.section_obj.name] = self.section_obj
        return BaseState(self. data)
