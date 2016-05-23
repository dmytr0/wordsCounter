package xyz.dimonick.Tools;


import java.util.HashMap;
import java.util.Map;
/*
    Сlass for counting words
 */
public class Counter {

    private Map<String, Integer> words = new HashMap<>();

    // method of counting
    public Map<String, Integer> countUp (String text){
        StringBuffer word = new StringBuffer();
        for(int i=0; i < text.length(); i++){
            char curr = text.toLowerCase().charAt(i);
            if( (curr >= 97 && curr <= 122) || (curr >= 1072 && curr <= 1103) ){ // We take into account only the Latin and Cyrillic letters
                word.append(curr);
            }
            else{
                addIn(word.toString());
                word.delete(0, word.length());
            }
        }
        addIn(word.toString());
        word.delete(0, word.length());
        selectsMoreThanTwoWord();
        return words;
    }

    // method to add a word to the counting
    private void addIn(String word){
        if(word.length()>= 2){
            if(words.get(word)!= null){
                words.put(word, words.get(word)+1);
            }
            else{
                words.put(word, 1);
            }
        }
    }

    // method for the selection of the words repeated by two times
    private void selectsMoreThanTwoWord() {
        Map<String, Integer> temp = new HashMap<>(words);
        for(Map.Entry<String,Integer> entry: temp.entrySet()){
            if(entry.getValue() < 2){
                words.remove(entry.getKey());
            }
        }
    }
}
