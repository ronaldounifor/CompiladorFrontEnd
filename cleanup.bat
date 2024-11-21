@echo off
if exist parser.java del parser.java
if exist sym.java del sym.java
if exist scanner.java del scanner.java
for /r %%f in (*.class) do del "%%f"