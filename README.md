# Ethereum Registration Smart Contract

This contract is capable of handling an arbitrary basic registration process. 

After the contract is deployed, the owner can open or close the registration when she/he chooses. When registration is open, applicants are able
to apply to the contract with their first name, last name, school and age. When the registration window is closed, applicants are no longer able to apply.
At any point, a method can be called to display all applicants.

### Requirements:

- Node - https://github.com/nodejs
- testRPC - https://github.com/ethereumjs/testrpc                                                                                     
- truffle - https://github.com/trufflesuite/truffle

### Setup:
1. Start testRPC - `testrpc`
2. `cd` into the cloned directory.
3. Compile and migrate the Registration.sol contract. - `truffle compile && truffle migrate --reset`.

#### Adding people to the contract




