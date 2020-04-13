package com.novik;

import java.util.List;

public class Main {

    public static void main(String[] args) {
        var newText = List.of(List.of("A", "huck", "up!"),
                List.of("It's", "a", "wonderful", "huck."),
                List.of("It's", "a", "spring", "time", "saddens."));
        Functionals.modifyText(newText, 'h','k');
    }

}
