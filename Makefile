JAVACC_JAR = /home/dk/javacc_6_1/javacc-6.1.0/target/javacc-7.0.9.jar
SOURCE_NAME=grammar
 
all: TableStruct.java TypeDesc.java ParserDemoTest.java SqlParser.java
	javac *.java	 
 
SqlParser.java : $(SOURCE_NAME).jj
	java -cp $(JAVACC_JAR) javacc $(SOURCE_NAME).jj
 
clean: 
	rm -rf ./ParseException.*
	rm -rf ./SimpleCharStream.*
	rm -rf ./SqlParser.*
	rm -rf ./SqlParserConstants.*
	rm -rf ./SqlParserTokenManager.*
	rm -rf ./Token.*
	rm -rf ./TokenMgrError.*
	rm -rf ./*.class
	