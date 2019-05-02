# crystal-blockchain

Simple example blockchain, written in crystal, as described in this blog post:
  https://medium.com/@bradford_hamilton/write-your-own-blockchain-and-pow-algorithm-using-crystal-d53d5d9d0c52

## Installation

`shards install`

## Usage

To build and then start web server:
```
crystal build src/crystal-blockchain.cr
./crystal-blockchain
```

`./get_blockchain.sh` to get a JSON representation of the blockchain
`./json_post_mine_block.sh some_data_to_go_in the mined block` to mine a block on the chain

## Contributing

1. Fork it (<https://github.com/your-github-user/crystal-blockchain/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [John Feras](https://github.com/your-github-user) - creator and maintainer
