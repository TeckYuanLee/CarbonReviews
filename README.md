# CarbonReviews

Welcome to CarbonReviews! This project is inspired by the decentralized nature of blockchain technology which enables reviews stored to be immutable and tamper-proof. When reviews are written to the blockchain, anyone can verify the reviews of a product and make better informed decision on their purchases.

As environmental concerns continues to grow, we believe it will be a good start to utilise an immutable and tamper-proof review system for consumers to rate the carbon footprint of products available in the market. When consumers compare the CarbonReviews of a product, they will get to choose products that are actually friendly for the environment. Companies can also compete to produce products that are more eco-friendly to have a better image to its consumers.

![CarbonReviewsPoster](https://user-images.githubusercontent.com/8788481/129480954-474a5a3c-f411-400c-8dc0-fb049671955b.PNG)

# How it's made

We used Scaffold-eth (https://github.com/austintgriffith/scaffold-eth) to build our smart contract and the front end UI. Reviews can only be posted by users with a review token supplied by the smart contract. We then used web3storage to store reviews written by users, and subsequently store the CID returned into our smart contract. Each review is mapped to the product and the reviewer address to ensure its authenticity.

# Demo Video

[Watch our demo video here](https://youtu.be/DY4uo5tojT4)

Reference source: a_blockchain_based_system_for_online_consumer_reviews.pdf
ethereum_mitigating_review_frauds.pdf

# Link references

[Carbon Reviews - EthGlobal](https://showcase.ethglobal.co/hackfs2021/carbonreviews)
[Scaffold Eth](https://github.com/austintgriffith/scaffold-eth)

# To Run program

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
