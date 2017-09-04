# Ethereum Arbitrary Registration Smart Contract
This contract is capable of handling an arbitrary basic registration process. 

The owner of this contract is able to open and close a registration. During open periods, applicants are able to apply with their first name, last name, school, and age. During closed periods, applicants are no longer able to apply. At any point, the owner can fetch all the current applicants. 

### Requirements:
- Node - https://github.com/nodejs
- testRPC - https://github.com/ethereumjs/testrpc                                                                                     
- truffle - https://github.com/trufflesuite/truffle

### Setup:
1. Start testRPC - `testrpc`.
2. `cd` into the cloned directory.
3. Compile and migrate the Registration.sol contract. - `truffle compile && truffle migrate --reset`.

#### Open Registration
By default, when the contract is deployed, registration is open.
```
Registration.deployed().then(a => (a.setStatus(1).then(console.log)))
```
#### Apply
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

