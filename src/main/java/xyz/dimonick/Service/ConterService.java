package xyz.dimonick.Service;


import xyz.dimonick.Tools.Counter;

import java.io.Serializable;
import java.util.Map;

//Service class for jsp
public class ConterService implements Serializable {

    private Map<String, Integer> resultTable ;
    private String destinationText;

    public void setDestinationText(String destinationText) {
        this.destinationText = destinationText;
        resultTable = new Counter().countUp(destinationText);
    }


    public Map<String, Integer> getResultTable() {
        return resultTable;
    }
}
