# CarbonReviews

Welcome to CarbonReviews! This project is inspired by the decentralized nature of blockchain technology which enables reviews stored to be immutable and tamper-proof. When reviews are written to the blockchain, anyone can verify the reviews of a product and make better informed decision on their purchases.

As environmental concerns continues to grow, we believe it will be a good start to utilise an immutable and tamper-proof review system for consumers to rate the carbon footprint of products available in the market. When consumers compare the CarbonReviews of a product, they will get to choose products that are actually friendly for the environment.

For this project submission we have attempted to come up with a minimal smart contract that allows sellers to list products for sale to the consumers. On purchase of a product, the consumer will get a CarbonReviews token that allows them to review that particular product they have purchased. After a review is made, the token will be destroyed and they can no longer review the product until the next time they purchase the same product. Anyone can access the number of reviews of a particular product, and they can look up for reviews with an index given as an input.

To ensure that consumers will always get a CarbonReviews token after a purchase, sellers have to inject an initial supply of 100 tokens into the contract, and subsequent restocks requires sellers to have minimum token count of current inventory + restock quantity. 

Storing large number of reviews on the smart contract will be costly, so we need to store reviews on IPFS. We are attempting to implement an API that checks ownership of a token by an address, and requiring that address to have signed its review, and only then store the review on IPFS. The data chunk stored on IPFS would include the review, the address that wrote the review, the product skuID, and the block number and hash when the token was received. We would then have their private key sign all of this and store it in IPFS. This would prove that they received a CarbonReviews token for a product at a given block, and wrote a review and signed with their private key.

Future work: Utilising a decentralized database to store and retrieve reviews, implement a voting mechanism to CarbonReviews to distinguish helpful and garbage reviews, improving the UI/UX for CarbonReviews.

We used scaffold-eth to help us speed up the learning process of creating smart contracts and some papers online regarding review systems on the decentralized blockchain network.

Reference source: a_blockchain_based_system_for_online_consumer_reviews.pdf
ethereum_mitigating_review_frauds.pdf
