pragma solidity ^0.4.4;

contract Registration {
	
	address public owner;
	uint public status;

	struct Applicant {
		bytes32 firstName;
		bytes32 lastName;
		bytes32 school;
		uint age;
	}

	function Registration() {
        owner = msg.sender;
        status = 1;
	}

	function register(bytes32 _firstname, bytes32 _lastname, bytes32 _school, uint _age) returns (bool success) {
		if (status != 1) return;

		Person memory newPerson;
		newPerson.firstName = _firstname;
		newPerson.lastName = _lastname;
		newPerson.school = _school
		newPerson.age = _age;	

		people.push(newPerson);
		return true;
	}

	function setStatus(uint _status) returns (bool success) {
		if (msg.sender != owner) return;

        status = _status;
	}

	function getPeople() constant returns(bytes32[], bytes32[], uint[]) {

		uint length = people.length;

		bytes32[] memory firstNames = new bytes32[](length);
		bytes32[] memory lastNames = new bytes32[](length);
		bytes32[] memory school = new bytes32[](length);
		uint[] memory ages = new uint[](length);

		for (uint i = 0; i < people.length; i++) {
			Person memory currentPerson;
			currentPerson = people[i];

			firstNames[i] = currentPerson.firstName;
			lastNames[i] = currentPerson.lastName;
			school[i] = currentPerson.school;
			ages[i] = currentPerson.age;
		}

		return (firstNames, lastNames, ages);
	}
	
}
