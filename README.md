The main enhancements added include:

Introduction of a Users Entity: To manage multiple private collections, a new users table was added. This table will hold basic user information like username, first_name, last_name, and join_date, serving as the foundation for user-specific data.

Implementation of a Subtype Relationship: The original books table, which contained both generic title information and specific publication details, has been split. The new books table now functions as a parent entity, storing only a book's general title information, such as title and author_id. A new book_copies table was created as a subtype to store specific details about a physical or digital copy of a book, including its format and book_condition. This is an overlapping subtype relationship, as a single book title can have multiple formats (e.g., a hardcover, a paperback, or an e-book) that can all now be tracked independently.

Creation of a Many-to-Many Relationship: To link users to the specific book copies they own, a new junction table called user_books was created. This table resolves the many-to-many relationship between users and books, allowing many users to own many different book copies. It includes a composite primary key of (user_id, book_copy_id) to ensure each link is unique.
