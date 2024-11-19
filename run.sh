java -jar lib/jflex-full-1.9.1.jar ExercicioA.flex

java -jar lib/java-cup-11b.jar -parser parser -symbols sym ExercicioA.cup


javac -cp '.;lib\java-cup-11b.jar;lib\java-cup-11b-runtime.jar;lib\jflex-1.8.2.jar' Yylex.java parser.java sym.java Main.java



java -cp '.;lib\java-cup-11b.jar;lib\java-cup-11b-runtime.jar;lib\jflex-1.8.2.jar' Main




javac -cp lib/java-cup-11b.jar Yylex.java

java -jar lib/java-cup-11b.jar ExercicioA.cup


java -cp lib/* java_cup.Main src/ExercicioA.cup