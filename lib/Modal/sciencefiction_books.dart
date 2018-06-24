class Book {
  String title,
      writer,
      price,
      image,
      description = '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis a massa et faucibus. 
      Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam fringilla et mauris eu finibus. \nCras nec mauris tortor. 
      Praesent commodo diam posuere nisl rutrum, non aliquam mauris pellentesque. Nullam eleifend, libero in pellentesque consectetur, leo mi aliquam ipsum, a tempor libero nulla ac ex. 
      Sed aliquet imperdiet gravida. \nIn in tellus pulvinar, ornare lacus rutrum, semper ex. 
      In tincidunt felis eu libero elementum, in cursus purus finibus. Morbi eu massa at lectus dictum pulvinar non sit amet ipsum. 
      Donec metus lacus, convallis vel dolor quis, luctus ullamcorper est. Phasellus ac ultricies lorem.\nPhasellus auctor nisl ac massa auctor dictum. Nulla quis ex molestie, auctor nulla scelerisque, laoreet urna. 
      Sed semper tristique commodo. Nunc nec porta velit. Vivamus dignissim neque aliquet, rutrum nisl quis, molestie odio. 
      Praesent fringilla magna lorem.''';
  int pages;
  double rating;

  Book(
      this.title, this.writer, this.price, this.rating, this.pages, this.image);
}

final List<Book> books = [
  // Science Fiction
  Book("Only Human", "Sylvain Neuvel", r"$31", 3.77, 324, "images/onlyhuman.jpg"),
  Book("LIFEL1K3", "Jay Kristoff", r"$44", 4.24, 364, "images/lifelike.jpg"),
  Book("Artificial Condition", "Martha Wells", r"$47", 4.39, 386, "images/artificialcondition.jpg"),
  Book("Brightly Burning", "Alexa Donne", r"$41", 3.75, 390, "images/brightlyburning.jpg"),
  Book("The Speed of Sound", "Eric Bernt", r"$26", 4.21, 255, "images/thespeedofsound.jpg"),
  Book("Ender's Game", "Orson Scott Card", r"$23", 4.3, 484, "images/endersgame.jpg"),
  Book("The Hitchhiker's Guide to the Galaxy", "Douglas Adams", r"$43", 4.21, 339, "images/thehitchhikersguidetothegalaxy.jpg"),
  Book("Dune", "Frank Herbert", r"$49", 4.2, 339, "images/dune.jpg"),
  Book("Eve of Man", "Giovanna Fletcher", r"$20", 4.31, 357, "images/eveofman.jpg"),
  Book("Pushing Brilliance", "Tim Tigner", r"$36", 4.24, 318, "images/pushingbrilliance.jpg"),
  // End of Science Fiction
];