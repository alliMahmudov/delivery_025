import 'package:delivery_025/constants/assets.dart';
import 'package:equatable/equatable.dart';

class Books extends Equatable {
  final int id;
  final String name;
  final String price;
  final String image;
  final String description;

  const Books(
      {required this.id,
      required this.name,
      required this.price,
      required this.image,
      required this.description});

  @override
  List<Object?> get props => [id, name, price, description];

  static List<Books> books = [
    Books(
      id: 1,
      name: "Anna Karenina",
      price: "\$19.99",
      image: Assets.anna,
      description:
          "Greta Garbo in Anna Karenina (1935), directed by Clarence Brown",
    ),
     Books(
      id: 2,
      name: "To Kill a Mockingbird.",
      price: "\$20.52",
      image: Assets.mockingBird,
      description:
          "This book cover is one of many given to Harper Lee's classic work To Kill a Mockingbird (1960). The novel won a Pulitzer Prize in 1961 and the next year was made into an Academy Award-winning film",
    ),
     Books(
      id: 3,
      name: "The Great Gatsby",
      price: "\$10.99",
      image: Assets.gatsby,
      description:
          "F. Scott Fitzgerald’s The Great Gatsby is distinguished as one of the greatest texts for introducing students to the art of reading literature critically",
    ),
     Books(
      id: 4,
      name: "One Hundred Years of Solitude",
      price: "\$18.99",
      image: Assets.winner,
      description:
          "The late Colombian author Gabriel García Márquez published his most famous work, One Hundred Years of Solitude, in 1967",
    ),
    Books(
      id: 5,
      name: "A Passage to India",
      price: "\$7.69",
      image: Assets.toIndia,
      description:
      "E.M. Forster wrote his novel A Passage to India after multiple trips to the country throughout his early life",
    ),
    Books(
      id: 6,
      name: "Invisible Man. Ralph Ellison",
      price: "\$10.95",
      image: Assets.invisible,
      description:
      "Often confused with H.G. Wells’s science-fiction novella of nearly the same name (just subtract a “The”), Ralph Ellison’s Invisible Man is a groundbreaking novel in the expression of identity for the African American male",
    ),
    Books(
      id: 7,
      name: "Don Quixote",
      price: "\$13.99",
      image: Assets.don,
      description:
      "Don Quixote (right) and his servant Sancho Panza are pictured in an illustration from the book Don Quixote, by Miguel de Cervantes. The illustration appeared in an edition of the book that was published in the 1800s.",
    ),
    Books(
      id: 8,
      name: "Beloved",
      price: "\$17.69",
      image: Assets.beloved,
      description:
      "Toni Morrison’s 1987 spiritual and haunting novel Beloved tells the story of an escaped slave named Sethe who has fled to Cincinnati, Ohio, in the year 1873",
    ),
    Books(
      id: 9,
      name: "Mrs. Dalloway",
      price: "\$7.69",
      image: Assets.dalloway,
      description:
      "Possibly the most idiosyncratic novel of this list, Virginia Woolf’s Mrs. Dalloway describes exactly one day in the life of a British socialite named Clarissa Dalloway",
    ),
    Books(
      id: 10,
      name: "Things Fall Apart",
      price: "\$8.89",
      image: Assets.chinua,
      description:
      "The Western canon of “great literature” often focuses on writers who come from North America or Europe and often ignores accomplished writers and amazing works of literature from other parts of the world",
    ),
    Books(
      id: 11,
      name: "Jane Eyre",
      price: "\$7.29",
      image: Assets.jane,
      description:
      "Charlotte Brontë’s Jane Eyre, another novel often assigned for reading in school, was initially published in 1847 under the pseudonym Currer Bell to disguise the fact that the writer was a woman",
    ),
    Books(
      id: 12,
      name: "One Hundred Years of Solitude",
      price: "\$17.98",
      image: Assets.purple,
      description:
      "Though the epistolary novel (a novel in the form of letters written by one or more characters) was most popular before the 19th century, Alice Walker became a champion of the style with her 1982 novel The Color Purple, which won a Pulitzer Prize and a National Book Award",
    ),

  ];
}
