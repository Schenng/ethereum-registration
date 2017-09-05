pragma solidity ^0.4.4;

contract Registration {
	address public owner;
	uint public status;

	Applicant[] public applicants;

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

		Applicant memory newApplicant;
		newApplicant.firstName = _firstname;
		newApplicant.lastName = _lastname;
		newApplicant.school = _school;
		newApplicant.age = _age;	

		applicants.push(newApplicant);
		return true;
	}

	function setStatus(uint _status) returns (bool success) {
		if (msg.sender != owner) return true;
        status = _status;
	}

	function getPeople() constant returns(bytes32[], bytes32[], bytes32[], uint[]) {
		uint length = applicants.length;

		bytes32[] memory firstNames = new bytes32[](length);
		bytes32[] memory lastNames = new bytes32[](length);
		bytes32[] memory schools = new bytes32[](length);
		uint[] memory ages = new uint[](length);

		for (uint i = 0; i < applicants.length; i++) {
			Applicant memory currentApplicant;
			currentApplicant = applicants[i];

			firstNames[i] = currentApplicant.firstName;
			lastNames[i] = currentApplicant.lastName;
			schools[i] = currentApplicant.school;
			ages[i] = currentApplicant.age;
		}

		return (firstNames, lastNames, schools, ages);
	}
}
