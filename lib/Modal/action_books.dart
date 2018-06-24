class Book {
  String title,
      writer,
      price,
      image,
      description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis a massa et faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam fringilla et mauris eu finibus. \nCras nec mauris tortor. Praesent commodo diam posuere nisl rutrum, non aliquam mauris pellentesque. Nullam eleifend, libero in pellentesque consectetur, leo mi aliquam ipsum, a tempor libero nulla ac ex. Sed aliquet imperdiet gravida. \nIn in tellus pulvinar, ornare lacus rutrum, semper ex. In tincidunt felis eu libero elementum, in cursus purus finibus. Morbi eu massa at lectus dictum pulvinar non sit amet ipsum. Donec metus lacus, convallis vel dolor quis, luctus ullamcorper est. Phasellus ac ultricies lorem.\nPhasellus auctor nisl ac massa auctor dictum. Nulla quis ex molestie, auctor nulla scelerisque, laoreet urna. Sed semper tristique commodo. Nunc nec porta velit. Vivamus dignissim neque aliquet, rutrum nisl quis, molestie odio. Praesent fringilla magna lorem.';
  int pages;
  double rating;

  Book(
      this.title, this.writer, this.price, this.rating, this.pages, this.image);
}

final List<Book> books = [
  // Action Books
  Book("The Gray Ghost", "Clive Cussler", r"$38", 4.23, 234, "images/thegrayghost.jpg"),
  Book("Storm Front", "Susan May Warren", r"$48", 4.52, 185, "images/stormfront.jpg"),
  Book("Ruthless Magic", "Megan Crewe", r"$46", 4.05, 258, "images/ruthlessmagic.jpg"),
  Book("Shades", "Jaime Reese", r"$41", 4.29, 240, "images/shades.jpg"),
  Book("The Necromancer's Reckoning", "S.J. Himes", r"$40", 4.59, 365, "images/thenecromancers.jpg"),
  Book("The Fallen", "David Baldacci", r"$24", 4.31, 313, "images/thefallen.jpg"),
  Book("Origin", "Dan Brown", r"$37", 3.84, 244, "images/origin.jpg"),
  Book("Twisted Prey", "John Sandford", r"$44", 4.48, 255, "images/twistedprey.jpg"),
  Book("The Hunger Games", "Suzanne Collins", r"$36", 4.33, 452, "images/thehungergames.jpg"),
  Book("The Maze Runner", "James Dashner", r"$47", 4.03, 263, "images/themazerunner.jpg"),
  Book("City of Bones", "Cassandra Clare", r"$35", 4.12, 588, "images/cityofbones.jpg"),
  // End of Action Books
];