enum RSPInputType {
  rock,
  scissors,
  paper;

  String get path => 'assets/images/$name.png';
}

enum RSPGameResultType {
  playerWin('player 승리'),
  draw('무승부'),
  cpuWin('player 패배');

  const RSPGameResultType(this.displayString);

  final String displayString;
}
