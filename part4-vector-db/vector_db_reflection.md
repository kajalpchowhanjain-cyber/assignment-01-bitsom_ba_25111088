## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for searching through large legal contracts. Keyword searches rely on exact matches and often fail to capture the context or meaning of a query. For example, if a lawyer searches for "termination clauses," a keyword search might miss relevant sections that use different wording such as "contract cancellation terms."

Vector databases, on the other hand, use embeddings to capture the semantic meaning of text. By converting both the query and the contract content into vectors, the system can identify similar meanings even if the wording is different. This allows for more accurate and context-aware search results.

In this system, the contracts would first be broken into smaller chunks (such as paragraphs), and each chunk would be converted into embeddings using a model like sentence-transformers. These embeddings would then be stored in a vector database such as FAISS or Pinecone.

When a lawyer enters a query, it is also converted into an embedding and compared with stored embeddings using similarity measures like cosine similarity. The most relevant sections are then retrieved and presented to the user.

Thus, a vector database enables semantic search, making it highly effective for searching large and complex documents like legal contracts, where meaning matters more than exact wording.
