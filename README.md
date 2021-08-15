# CarbonReviews

Welcome to CarbonReviews! This project is inspired by the decentralized nature of blockchain technology which enables reviews stored to be immutable and tamper-proof. When reviews are written to the blockchain, anyone can verify the reviews of a product and make better informed decision on their purchases.

As environmental concerns continues to grow, we believe it will be a good start to utilise an immutable and tamper-proof review system for consumers to rate the carbon footprint of products available in the market. When consumers compare the CarbonReviews of a product, they will get to choose products that are actually friendly for the environment. Companies can also compete to produce products that are more eco-friendly to have a better image to its consumers.

![CarbonReviewsPoster](https://user-images.githubusercontent.com/8788481/129480954-474a5a3c-f411-400c-8dc0-fb049671955b.PNG)

# How it's made

We used Scaffold-eth (https://github.com/austintgriffith/scaffold-eth) to build our smart contract and the front end UI. Reviews can only be posted by users with a review token supplied by the smart contract. We then used web3storage to store reviews written by users, and subsequently store the CID returned into our smart contract. Each review is mapped to the product and the reviewer address to ensure its authenticity.

Other references: a_blockchain_based_system_for_online_consumer_reviews.pdf / ethereum_mitigating_review_frauds.pdf

# Demo Video

[Watch our demo video here](https://youtu.be/DY4uo5tojT4)

# Link references

- [Carbon Reviews - EthGlobal](https://showcase.ethglobal.co/hackfs2021/carbonreviews)
- [Scaffold Eth](https://github.com/austintgriffith/scaffold-eth)

# To run program

Prerequisites: [Node](https://nodejs.org/en/download/) plus [Yarn](https://classic.yarnpkg.com/en/docs/install/) and [Git](https://git-scm.com/downloads)

> clone/fork 🏗 scaffold-eth:

```bash
git clone 
```

> install and start your 👷‍ Hardhat chain:

```bash
yarn install
yarn chain
```

> in a second terminal window, start your 📱 frontend:

```bash
yarn start
```

> in a third terminal window, 🛰 deploy your contract:

```bash
yarn deploy
```

# To use 

[Please watch our demo video here](https://youtu.be/DY4uo5tojT4)

# Program functionalities
### **Smart Contract (YourContract.sol)**
1. Provision of review tokens via `giveToken(address _userAdd, uint _productId)`
    - if new user address (`_userAdd`) or product (`productId`) is passed into function, `users` and `products` will be updated with new product.
    - 1 review token will be credited to users-tokens' mapping

2. Display number of review tokens for each user via `displayTokens(address _userAdd, uint _productId)` return function

3. Token is used via `writeReview(uint _productId, string memory _reviewHash)` in conjunction with verification of tokens with `hasToken(uint _productId)`.
    - if user has review token for specific product, total number of tokens will be deducted by 1 upon spending for review submission
    - reviewHash in the form of IPFS CID will be stored in blockchain

4. Display/return review, functions available to:
   - return single review - `displayReview(address _userAdd, uint _productId, uint reviewIndex)`
   - return **all** reviews for single product - `displayMultipleReviewsProduct(uint _productId)`
   - return **all** reviews for single user - `displayMultipleReviewsUser(address _userId)`

### **Store and retrieve data to/from IPFS/web3storage**
5. Storing data - `storeJson(json_obj, filename)`
    - returns IPFS/web3storage CID
6. Retrieving data - `getJson(hashKey)`
    - return stored json.
