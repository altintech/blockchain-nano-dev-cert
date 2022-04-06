# blockchain-nano-dev-cert
All code developed to pass the Blockchain Nanodegree Certification

Assumption is that Node.js is installed.

### How to run and test the app for "blockchain-fundamentals" section:

1) Checkout from "main" branch to your local environment
2) In a terminal window navigate to "blockchain-fundamentals" directory
3) Run `npm init` to create the package.json file
4) Run `npm install express morgan body-parser crypto-js hex2ascii bitcoinjs-message` to install the dependent packages
5) Run `node app.js` to start the application. You should see "Server Listening for port: 8000"
6) Go to your browser and check that server is able to service requests: "http://localhost:8000". You should see: "Cannot GET /"
7) Use Postman to test the following endpoints:  
   * GET "/block/:height" where :height indicates the sequence of the block in the chain. Block at height 0 is the Genesis block.
        * Example: http://localhost:8000/block/0
   * POST "/requestValidation" to be used for generation of a message that you should then sign to prove ownership.
        * URL: http://localhost:8000/requestValidation
        * Example JSON Body: { "address": "18vnWMKjDg5Hz8grX7JG8JZrSHf5YJ6Mb9" }
   * POST "/submitStar" to be used for adding a star object in the chain
        * URL: http://localhost:8000/submitStar
        * Example JSON Body:  
          `{  
          "address": "18vnWMKjDg5Hz8grX7JG8JZrSHf5YJ6Mb9",
          "signature": "H7S2Vsvw+HX6fep6fyRMVjCy5DtKWTLlPbM6K6BSB941YLO9vx/MrBHhF6a6/uvvboOsaHBUtvuqrRIqVIxM7j4=",
          "message": "18vnWMKjDg5Hz8grX7JG8JZrSHf5YJ6Mb9:1649269924:starRegistry",
          "star": {
          "dec": "68 52 56.8",
          "ra": "16h 29m 1.0s",
          "story": "Testing the storya 24"
          }
          }`
    * GET "/block/hash/:hash" to get a block by its hash value
        * Example: http://localhost:8000/block/hash/73baf17aa6e5df379160817e17dbbbbce3f63de008f7ecb87879e34f5a8a7b7d
    * GET "/blocks/:address" to get all blocks that are owned by the supplied address
        * Example: http://localhost:8000/blocks/18vnWMKjDg5Hz8grX7JG8JZrSHf5YJ6Mb9
    * GET "/getChainValidationErrors" to validate the chain and get all the errors
        * Example: http://localhost:8000/getChainValidationErrors

   


