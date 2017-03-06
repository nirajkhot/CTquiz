import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

public class MaxNumOfWords {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		System.out.println("Enter text:");
		String str = sc.nextLine();

		MaxNumOfWords obj = new MaxNumOfWords();
		obj.maxWord(str);

		sc.close();
	}

	public void maxWord(String source) {

		List<Integer> numOfWords = new ArrayList<Integer>();

		BreakIterator itrSentence = BreakIterator.getSentenceInstance(Locale.US);

		// Separating sentences
		itrSentence.setText(source);

		int startSentence = itrSentence.first();

		for (int endSentence = itrSentence
				.next(); endSentence != BreakIterator.DONE; startSentence = endSentence, endSentence = itrSentence
						.next()) {

			String sentence = source.substring(startSentence, endSentence);
//			System.out.println(sentence);

			// Separating words
			String[] words = sentence.split(" ");

			// Finding number of words in a sentence
			numOfWords.add(words.length);

		}

		// Finding maximum number of words in all sentences
		System.out.println("Maximum num of words in all given sentences: "+Collections.max(numOfWords));

	}

}
