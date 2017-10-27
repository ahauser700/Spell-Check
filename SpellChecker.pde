String[] lines;
String[] words;
String delimiters = " ,.?!;:[]";

void setup() {
  size(400,400);
  background(255);
  selectInput("Select a file to process:", "fileSelected");
}

void draw(){
  
  
}

void fileSelected(File selection) { //selects the file
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    lines = loadStrings(selection.getAbsolutePath());
    String everything = join(lines, "" );
    words = splitTokens(everything, delimiters); 
    for(int i = 0; i < words.length; i++){ 
      words[i] = words[i].toLowerCase();
    }
    printArray(words);
  }
}