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
  // History Books
  Book("Chasing New Horizons", "Alan Stern,  David Grinspoon", r"$49", 4.29, 281, "images/chasingnewhorizons.jpg"),
  Book("The Loyal Son", "Daniel Mark Epstein", r"$38", 4.08, 390, "images/theloyalson.jpg"),
  Book("1776", "David McCullough", r"$46", 4.06, 419, "images/1776.jpg"),
  Book("Team of Rivals", "Doris Kearns Goodwin", r"$23", 4.28, 291, "images/teamofrivals.jpg"),
  Book("John Adams", "David McCullough", r"$38", 4.05, 331, "images/johnadams.jpg"),
  Book("A Higher Loyalty", "James Comey", r"$48", 4.28, 374, "images/ahigherloyalty.jpg"),
  Book("Hillbilly Elegy", "J.D. Vance", r"$31", 3.94, 431, "images/hillbillyelegy.jpg"),
  // End of History Books

];