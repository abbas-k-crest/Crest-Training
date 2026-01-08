from mymodule import myfunc


myfunc()

from mypackage.subpackage import mysubscript


mysubscript.subscript()

if __name__ == '__main__':
    print("Run directly")
else:
    print("Imported")