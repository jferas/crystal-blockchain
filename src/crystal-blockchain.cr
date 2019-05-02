# Simple example blockchain, written in crystal, as described in this blog post:
#   https://medium.com/@bradford_hamilton/write-your-own-blockchain-and-pow-algorithm-using-crystal-d53d5d9d0c52
#
require "kemal"
require "./Block"
module Crystal::Blockchain
  VERSION = "0.1.0"

  blockchain = [] of NamedTuple(
    index: Int32,
    timestamp: String,
    data: String,
    hash: String,
    prev_hash: String,
    difficulty: Int32,
    nonce: String
  )

  # mine initial block on startup
  blockchain << Block.create(0, Time.now.to_s, "Genesis block's data!", "")
  
  # return the whole chain on a get request
  get "/" do
    blockchain.to_json
  end
  
  # mine a block containing data from given parameter
  post "/mine-block" do |env|
    data = env.params.json["data"].as(String)
    new_block = Block.generate(blockchain[blockchain.size - 1], data)
    if Block.is_valid?(new_block, blockchain[blockchain.size - 1])
      blockchain << new_block
      puts "\n"
      p new_block
      puts "\n"
    end
    new_block.to_json
  end

  # start the web server
  Kemal.run
end
