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


  // Horror Books
  Book("Behind Closed Doors", "B.A. Paris", r"$37", 3.93, 271, "images/behindcloseddoors.jpg"),
  Book("The Retreat", "Mark Edwards", r"$23", 4.13, 472, "images/theretreat.jpg"),
  Book("Roses of May", "Dot Hutchison", r"$26", 4.03, 547, "images/therosesofmay.jpg"),
  Book("Stillhouse Lake", "Rachel Caine", r"$37", 4.11, 492, "images/stillhouselake.jpg"),
  Book("Spread", "Justin Jordan", r"$50", 3.5, 320, "images/spread.jpg"),
  // End of Horror Books

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

  // History Books
  Book("Chasing New Horizons", "Alan Stern,  David Grinspoon", r"$49", 4.29, 281, "images/chasingnewhorizons.jpg"),
  Book("The Loyal Son", "Daniel Mark Epstein", r"$38", 4.08, 390, "images/theloyalson.jpg"),
  Book("1776", "David McCullough", r"$46", 4.06, 419, "images/1776.jpg"),
  Book("Team of Rivals", "Doris Kearns Goodwin", r"$23", 4.28, 291, "images/teamofrivals.jpg"),
  Book("John Adams", "David McCullough", r"$38", 4.05, 331, "images/johnadams.jpg"),
  Book("A Higher Loyalty", "James Comey", r"$48", 4.28, 374, "images/ahigherloyalty.jpg"),
  Book("Hillbilly Elegy", "J.D. Vance", r"$31", 3.94, 431, "images/hillbillyelegy.jpg"),
  // End of History Books


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