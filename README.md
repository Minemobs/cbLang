# CBLang
## A bad programming language made in Python.

CBLang is a programming language aiming to fix most of my problems with Python (this means that you likely don't need it), while still keeping it similar and as effective.

CBLang can be either interpreted, transpiled to python, or compiled into an exe using [PyInstaller](https://pyinstaller.readthedocs.io/en/stable/).

CBLang can run without any dependencies (including PyInstaller - *you just won't be able to compile your programs*, but they will run and transpile fine).

CBLang is only tested on Windows, but I'm sure it wouldn't be hard at all to get working on Linux.

Be warned that everything is basically held together by hopes and dreams, *so you are going to get a load of super random errors*.

So, how does it work?

## Installing

- ## Windows
    You can download the interpreter on [Ceebox's releases](https://github.com/Ceebox/cbLang/releases) 

- ## Linux
    You can download the interpreter on [Minemobs's releases](https://github.com/Minemobs/cbLang/releases)
    or by using the [installer](https://raw.githubusercontent.com/Minemobs/cbLang/main/installer.sh)

## Uninstalling
- ## Linux
    Just remove the `cbLang` file in `/usr/local/bin` (for example `sudo rm /usr/local/bin/cbLang`)

## Using the language

```cs
class Main()
{
    function Main()
    {
        //Here is a comment!
        print("Hello World");
    }
}
```
*^This is a basic `Hello World` program.*
⠀  
## Running, transpiling and 'compiling'
CBLang supports lots of methods of running your code, either having it directly interpreted, transpiling it to Python and spitting out the file for you to run when you want, or using PyInstaller to 'compile' (a more technically correct word would be 'pack') your code to an exe.

To run code directly, use the command `cbLang.exe fileName.cb` or `cbLang.exe -r fileName.cb`.⠀  
To transpile code, use the command `cbLang.exe -t fileName.cb outputfile.py`.⠀  
To compile code, use the command `cblang.exe -c filename.cb` or `cbLang.exe -c filename.cb output.exe` . *(This requires [PyInstaller](https://pypi.org/project/pyinstaller/) to be installed)*.⠀   

**More advanced behaviour:**

```csharp

//main.cb
    
//Include python libraries
from native reference sys;
//Include other cbLang code
include OtherFile;
class Main()
{
    function Main()
    {
        TryQuit(false);
        instance = OtherClass();
        print(instance.Add(1, 2));
        TryQuit(true);
        print(instance.Add(2, 3));
        //^This line will never be reached
    }
    function Quit(shouldQuit : bool)
    {
        if (shouldQuit == true)
        {
            print("Quitting");
            sys.exit();
        }
        else
        {
            print("Did not quit");
        }
    }
}
    
//OtherFile.cb
class OtherClass
{
    //Constructor
    function Start()
    {
        print("Created a new instance of OtherClass!");
    }
    function Add(a, b) is int
    {
        return a + b;
    }
}
```

*^This is a basic example of importing external code, along with demonstrating other concepts in the programming language.*

```csharp
class Main
{
    function Main()
    {
        Other.Test();
    }
}
class Other
{
    static function Test()
    {
        print("This code was printed from a static method in Other");
    }
}
```

*^This is a basic example of static methods.*
