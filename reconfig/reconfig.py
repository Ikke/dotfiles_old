from parser.xorg import Xorg

def print_level(l, str):
    print l * "\t" + str

def print_data(data):
    for name, section in data.items():
        print_level(0, "Section: %s" % name)
        if hasattr(section, "identity"):
            print_level(1, "Identity: %s" % section.identity)
        if hasattr(section, "screen"):
            print_level(1, "Screen: %s" % section.screen)
        if hasattr(section, "options"):
            for option_name, option_value in section.options.items():
                print_level(1, "Option %s: %s" % (option_name, option_value))


f = open("/etc/X11/xorg.conf")

parser = Xorg()

data =  parser.parse(f.readlines())
print_data(data)



