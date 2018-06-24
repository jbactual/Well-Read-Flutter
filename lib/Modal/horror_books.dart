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
  // Horror Books
  Book("Behind Closed Doors", "B.A. Paris", r"$37", 3.93, 271, "images/behindcloseddoors.jpg"),
  Book("The Retreat", "Mark Edwards", r"$23", 4.13, 472, "images/theretreat.jpg"),
  Book("Roses of May", "Dot Hutchison", r"$26", 4.03, 547, "images/therosesofmay.jpg"),
  Book("Stillhouse Lake", "Rachel Caine", r"$37", 4.11, 492, "images/stillhouselake.jpg"),
  Book("Spread", "Justin Jordan", r"$50", 3.5, 320, "images/spread.jpg"),
  // End of Horror Books
];