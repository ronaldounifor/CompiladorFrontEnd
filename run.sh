#!/bin/bash

# Equivalente a "call cleanup.bat"
# Adapte este comando para a sua necessidade, se houver um script de limpeza específico
# Exemplo genérico: rm -rf *.class  (remove arquivos .class)

# Define as variáveis
flex="lib/jflex-full-1.9.1.jar"
cup="lib/java-cup-11b.jar"
libs=".:lib/java-cup-11b.jar:lib/java-cup-11b-runtime.jar:lib/jflex-1.8.2.jar"

# Executa os comandos
java -jar "$flex" calc.flex
java -jar "$cup" -parser parser -symbols sym calc.cup
javac -cp "$libs" *.java
java -cp "$libs" Main

