String[] lines;

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
    printArray(lines);
  }
}