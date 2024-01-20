// player.dart
import 'card.dart';

class Player {
  List<MyCard> hand = [];

  int calculateScore() {
    int score = 0;
    int numberOfAces = 0;

    for (var card in hand) {
      if (card.rank == 'A') {
        numberOfAces++;
      }
      score += cardValue(card.rank);
    }

    // Adjust for Aces
    while (numberOfAces > 0 && score > 21) {
      score -= 10;
      numberOfAces--;
    }

    return score;
  }

  int cardValue(String rank) {
    if (rank == 'J' || rank == 'Q' || rank == 'K') {
      return 10;
    } else if (rank == 'A') {
      return 11; // Aces initially count as 11
    } else {
      return int.parse(rank);
    }
  }
}
