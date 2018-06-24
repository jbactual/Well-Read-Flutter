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

  // Mystery Books
  Book("The Lies They Tell", "Gillian French", r"$22", 3.27, 371, "images/theliestheytell.jpg"),
  Book("All of This Is True", "Lygia Day Peñaflor", r"$25", 3.59, 451, "images/allofthisistrue.jpg"),
  Book("What You Want To See", "Kristen Lepionka", r"$44", 3.98, 331, "images/whatyouwanttosee.jpg"),
  Book("Blink", "Sasha Dawn", r"$27", 3.84, 519, "images/blink.jpg"),
  Book("Game of Secrets", "Kim Foster", r"$44", 3.64, 285, "images/gameofsecrets.jpg"),
  Book("Her Last Goodbye", "Melinda Leigh", r"$42", 4.35, 443, "images/herlastgoodbye.jpg"),
  Book("In the Woods", "Tana French", r"$24", 3.75, 382, "images/inthewoods.jpg"),
  // End of Mystery Books

];