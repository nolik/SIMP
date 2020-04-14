package com.novik;

import java.util.Collection;
import java.util.List;
import java.util.function.BiFunction;
import java.util.stream.Collectors;

public class Main {
  private static final String WORD_REGEXP = "(?<=%s)[^%s]*";
  private static final BiFunction<Character, Character, String> WORD_REGEXP_FUNCTION = (firstLiteral, secondLiteral) ->
      String.format(WORD_REGEXP, firstLiteral, secondLiteral);

  public static void main(String[] args) {
    final var newText = List.of(
        List.of("A", "wake", "up!"),
        List.of("Just", "hakooona", "matata!!!"),
        List.of("It's", "a", "wonderful", "huck."),
        List.of("It's", "a", "spring", "time", "saddens."));

    System.out.println("Исходный текст: \n" + newText.stream()
        .flatMap(Collection::stream)
        .collect(Collectors.joining(" ")));

    final var firstLiteral = 'h';
    final var secondLiteral = 'c';
    System.out.printf("Литералы для удаления текста - первый: %s, второй: %s%n", firstLiteral, secondLiteral);

    modifyText(newText, firstLiteral, secondLiteral);
  }

  public static void modifyText(List<List<String>> text, char firstLiteral, char secondLiteral) {
    final var resultedText = text.stream()
        .flatMap(Collection::stream)
        .map(word -> word.replaceAll(
            WORD_REGEXP_FUNCTION.apply(firstLiteral, secondLiteral), ""))
        .collect(Collectors.joining(" "));

    System.out.println("Модифицированный текст: \n" + resultedText);
  }
}
