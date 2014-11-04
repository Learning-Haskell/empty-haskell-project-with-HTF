# empty-haskell-project-with-HTF

This repository contains an empty Haskell project ready for using [HTF: The Haskell Test Framework](http://hackage.haskell.org/package/HTF-0.10.0.5).

This project is a little more sophisticated than just an [empty-haskell-project](https://github.com/Learning-Haskell/empty-haskell-project).

It is based on the [Test.Framework.Tutorial](http://hackage.haskell.org/package/HTF-0.12.2.3/docs/Test-Framework-Tutorial.html)
and uses some of the [Structure of a Haskell project](https://www.haskell.org/haskellwiki/Structure_of_a_Haskell_project) from the [HaskellWiki](https://www.haskell.org/haskellwiki/Structure_of_a_Haskell_project).


## How you can use it

TODO

## How it was created

Follow these steps as a tutorial on creating a basic project with a source module and tests.


### 1. Create the repository in GitHub

[New repository](https://github.com/organizations/Learning-Haskell/repositories/new)

### 2. Clone the repository (from GitHub to your computer)

Using one of these methods:

- git clone 
- [Clone in Desktop](github-mac://openRepo/https://github.com/Learning-Haskell/empty-haskell-project-with-HTF)
- [Download ZIP](https://github.com/Learning-Haskell/empty-haskell-project-with-HTF/archive/master.zip)


### 3. Create the minimal cabal project files

#### cd

``` bash
$ cd empty-haskell-project-with-HTF/
```

Files at this point:

``` bash
$ ls
LICENSE		README.md
```

#### cabal init

``` bash
$ cabal init
Package name? [default: empty-haskell-project-with-HTF] 
Package version? [default: 0.1.0.0] 
Please choose a license:
 * 1) (none)
   2) GPL-2
   3) GPL-3
   4) LGPL-2.1
   5) LGPL-3
   6) AGPL-3
   7) BSD2
   8) BSD3
   9) MIT
  10) MPL-2.0
  11) Apache-2.0
  12) PublicDomain
  13) AllRightsReserved
  14) Other (specify)
Your choice? [default: (none)] 14
Please specify? CC0 1.0 Universal
Author name? [default: Ross Kendle] 
Maintainer email? [default: ross.kendle@gmail.com] 
Project homepage URL? https://github.com/Learning-Haskell/empty-haskell-project-with-HTF
Project synopsis? An empty Haskell project ready for Haskell Test Framework
Project category:
 * 1) (none)
   2) Codec
   3) Concurrency
   4) Control
   5) Data
   6) Database
   7) Development
   8) Distribution
   9) Game
  10) Graphics
  11) Language
  12) Math
  13) Network
  14) Sound
  15) System
  16) Testing
  17) Text
  18) Web
  19) Other (specify)
Your choice? [default: (none)] 
What does the package build:
   1) Library
   2) Executable
Your choice? 2
What is the main module of the executable:
 * 1) Main.hs (does not yet exist)
   2) Main.lhs (does not yet exist)
   3) Other (specify)
Your choice? [default: Main.hs (does not yet exist)] 
What base language is the package written in:
 * 1) Haskell2010
   2) Haskell98
   3) Other (specify)
Your choice? [default: Haskell2010] 
Include documentation on what each field means (y/n)? [default: n] n

Guessing dependencies...

Generating LICENSE...
Warning: unknown license type, you must put a copy in LICENSE yourself.
Generating Setup.hs...
Generating empty-haskell-project-with-HTF.cabal...
```

Files at this point:

``` bash
$ ls
LICENSE					Setup.hs
README.md				empty-haskell-project-with-HTF.cabal
```

### 4. Create src/Main.hs

#### Folder Structure

```
app/		-- root dir - for example empty-haskell-project-with-HTF 
  src/		-- For keeping the sourcecode
    Main.lhs	-- The main-module
  testsuite/	-- Contains the testing stuff
    runtests.sh	-- Will run all tests
    tests/	-- For unit and property based testing
  dist/		-- Directory containing what end-users should get
    build/	-- Contains binary files, created by cabal
    doc/	-- The haddock documentation goes here, created by cabal
  .git/        	-- git repository
  README.md	-- Textfile with short introduction of the project
  LICENSE	-- Textfile describing licensing terms for this project
  app.cabal	-- Project-description-file for cabal
  Setup.hs	-- Program for running cabal commands
```

from [Structure of a Haskell project - HaskellWiki](https://www.haskell.org/haskellwiki/Structure_of_a_Haskell_project)

#### 4.1 Create src folder

``` bash
mkdir src
```

#### 4.2 Create Main.hs

``` haskell
-- Main.hs
main = print "Hello World"
```

#### 4.3 Edit empty-haskell-project-with-HTF.cabal

```
  hs-source-dirs:      src
```

Files at this point:

``` bash
$ ls -R
LICENSE					Setup.hs				src
README.md				empty-haskell-project-with-HTF.cabal

./src:
Main.hs
```

#### 4.4  cabal configure build run

``` bash
$ cabal configure
Resolving dependencies...
Configuring empty-haskell-project-with-HTF-0.1.0.0...
```

``` bash
$ cabal build
Building empty-haskell-project-with-HTF-0.1.0.0...
Preprocessing executable 'empty-haskell-project-with-HTF' for
empty-haskell-project-with-HTF-0.1.0.0...
[1 of 1] Compiling Main             ( src/Main.hs, dist/build/empty-haskell-project-with-HTF/empty-haskell-project-with-HTF-tmp/Main.o )
Linking dist/build/empty-haskell-project-with-HTF/empty-haskell-project-with-HTF ...
```

``` bash
$ cabal run
Preprocessing executable 'empty-haskell-project-with-HTF' for
empty-haskell-project-with-HTF-0.1.0.0...
"Hello World"
```

Files at this point:

``` bash
$ ls -R
LICENSE					Setup.hs				empty-haskell-project-with-HTF.cabal
README.md				dist					src

./dist:
build			package.conf.inplace	setup-config

./dist/build:
autogen				empty-haskell-project-with-HTF

./dist/build/autogen:
Paths_empty_haskell_project_with_HTF.hs	cabal_macros.h

./dist/build/empty-haskell-project-with-HTF:
empty-haskell-project-with-HTF		empty-haskell-project-with-HTF-tmp

./dist/build/empty-haskell-project-with-HTF/empty-haskell-project-with-HTF-tmp:
Main.hi	Main.o

./src:
Main.hs
```

### 5. Create src/My/MyReverse.hs to test



Let's work from the src directory for a while.

``` bash
cd src
```

#### 5.1 Create My/MyReverse.hs

``` bash
mkdir My
```

Create a broken reverse function. We will use it to demonstrate the testing framework.

``` haskell
-- My/MyReverse.hs

module My.MyReverse (myReverse) where

myReverse :: [a] -> [a]
myReverse []     = []
myReverse [x]    = [x]
myReverse (x:xs) = myReverse xs
```

#### 5.2 Edit Main.hs

Import `My.MyReverse` and use it.

``` haskell
-- Main.hs
module Main where

import My.MyReverse

main = do
        print "Hello World"
        print (myReverse "Hello World")
```


#### 5.3 ghc --make 

This is a little detour showing the use of the ghc make facility to compile dependencies. I have to confess I used this approach to get the cabal files and module definitions correct.

``` bash
$ ghc --make Main.hs 
[1 of 2] Compiling My.MyReverse     ( My/MyReverse.hs, My/MyReverse.o )
[2 of 2] Compiling Main             ( Main.hs, Main.o )
Linking Main ...
```

#### 5.4 run

Let's give it a run. We should notice that reverse is not doing what we should expect, but it compiles and runs.

``` bash
$ ./Main
"Hello World"
"d"
```

Files in src at this point:

``` bash
$ ls -R
Main	Main.hi	Main.hs	Main.o	My

./My:
MyReverse.hi	MyReverse.hs	MyReverse.o
```

#### 5.5 cabal configure build run

Change back to the project root directory

``` bash
cd ..
```


``` bash
$ cabal configure
Resolving dependencies...
Configuring empty-haskell-project-with-HTF-0.1.0.0...
```

``` bash
$ cabal build
Building empty-haskell-project-with-HTF-0.1.0.0...
Preprocessing executable 'empty-haskell-project-with-HTF' for
empty-haskell-project-with-HTF-0.1.0.0...
[1 of 2] Compiling My.MyReverse     ( src/My/MyReverse.hs, dist/build/empty-haskell-project-with-HTF/empty-haskell-project-with-HTF-tmp/My/MyReverse.o )
[2 of 2] Compiling Main             ( src/Main.hs, dist/build/empty-haskell-project-with-HTF/empty-haskell-project-with-HTF-tmp/Main.o )
Linking dist/build/empty-haskell-project-with-HTF/empty-haskell-project-with-HTF ...
```

``` bash
$ cabal run
Preprocessing executable 'empty-haskell-project-with-HTF' for
empty-haskell-project-with-HTF-0.1.0.0...
"Hello World"
"d"
```

Files at this point:

``` bash
$ ls -R
LICENSE					Setup.hs				empty-haskell-project-with-HTF.cabal
README.md				dist					src

./dist:
build			package.conf.inplace	setup-config

./dist/build:
autogen				empty-haskell-project-with-HTF

./dist/build/autogen:
Paths_empty_haskell_project_with_HTF.hs	cabal_macros.h

./dist/build/empty-haskell-project-with-HTF:
empty-haskell-project-with-HTF		empty-haskell-project-with-HTF-tmp

./dist/build/empty-haskell-project-with-HTF/empty-haskell-project-with-HTF-tmp:
Main.hi	Main.o	My

./dist/build/empty-haskell-project-with-HTF/empty-haskell-project-with-HTF-tmp/My:
MyReverse.hi	MyReverse.o

./src:
Main	Main.hi	Main.hs	Main.o	My

./src/My:
MyReverse.hi	MyReverse.hs	MyReverse.o
```

### 6. Create tests

#### 6.1 Create test directories

``` bash
mkdir testsuite
mkdir testsuite/tests
```


#### 4.2 Create Main.hs

``` haskell
-- Main.hs
main = print "Hello World"
```

#### 4.3 Edit empty-haskell-project-with-HTF.cabal

```
  hs-source-dirs:      src
```

Files at this point:

``` bash
$ ls -R
LICENSE					Setup.hs				src
README.md				empty-haskell-project-with-HTF.cabal

./src:
Main.hs
```

#### 4.4  cabal configure build run

``` bash
$ cabal configure
Resolving dependencies...
Configuring empty-haskell-project-with-HTF-0.1.0.0...
```

``` bash
$ cabal build
Building empty-haskell-project-with-HTF-0.1.0.0...
Preprocessing executable 'empty-haskell-project-with-HTF' for
empty-haskell-project-with-HTF-0.1.0.0...
[1 of 1] Compiling Main             ( src/Main.hs, dist/build/empty-haskell-project-with-HTF/empty-haskell-project-with-HTF-tmp/Main.o )
Linking dist/build/empty-haskell-project-with-HTF/empty-haskell-project-with-HTF ...
```

``` bash
$ cabal run
Preprocessing executable 'empty-haskell-project-with-HTF' for
empty-haskell-project-with-HTF-0.1.0.0...
"Hello World"
```

Files at this point:

``` bash
$ ls -R
LICENSE					Setup.hs				empty-haskell-project-with-HTF.cabal
README.md				dist					src

./dist:
build			package.conf.inplace	setup-config

./dist/build:
autogen				empty-haskell-project-with-HTF

./dist/build/autogen:
Paths_empty_haskell_project_with_HTF.hs	cabal_macros.h

./dist/build/empty-haskell-project-with-HTF:
empty-haskell-project-with-HTF		empty-haskell-project-with-HTF-tmp

./dist/build/empty-haskell-project-with-HTF/empty-haskell-project-with-HTF-tmp:
Main.hi	Main.o

./src:
Main.hs
```



### 6. Edit README.md

Edit this document!

### 7. Commit and Sync to GitHub

Using one of these methods:

- GitHub Mac (or GitHub Windows)
- ```git ...```

