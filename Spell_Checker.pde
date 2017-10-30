HashEntry[] map;
ArrayList<String> overflow = new ArrayList<String>();

void setup(){
  map = new HashEntry[120000];
  Hash();
}

void Hash(){
 String[] word_dictionary = new String[120000];
 word_dictionary = loadStrings("AP CS PS03 Spell Checker - words.txt");
 for(int  i=0;i<word_dictionary.length;i++){
   HashEntry Entry=new HashEntry(word_dictionary[i],1);
  map[MakeHash(word_dictionary[i])]= Entry; 
 }
}

int MakeHash(String x){
 return(abs(x.hashCode()% 120000));
}
