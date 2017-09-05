# Ethereum Arbitrary Registration Smart Contract
This contract is capable of handling an arbitrary basic registration process. 

The contract supports the following methods:
- **Opening & Closing**. The OWNER of the contract can choose designated times when registration is open or closed.
- **Viewing Applicants**. View all applicants on the contract.
- **Register**. A public method which allows anyone to register.

Some use cases for this contract could be a Hackathon Registration, Event Resgistration, or even a Whitelist Registration. 

### Requirements:
- Node - https://github.com/nodejs
- testRPC - https://github.com/ethereumjs/testrpc                                                                                     
- truffle - https://github.com/trufflesuite/truffle

### Setup:
1. Start testRPC - `testrpc`.
2. `cd` into the cloned directory.
3. Compile and migrate the Registration.sol contract. - `truffle compile && truffle migrate --reset`.

#### Open Registration
By default, when the contract is deployed, the registration is open.
```
Registration.deployed().then(a => (a.setStatus(1).then(console.log)))
```
#### Register to the contract
```
Registration.deployed().then(a => (a.register("Simon","Cheng","Basic School",2`).then(console.log)))
```
#### View Applicants
```
Registration.deployed().then(a => (a.getPeople().then(console.log)))
```
#### Close Registration
```
Registration.deployed().then(a => (a.setStatus(0).then(console.log)))
```

