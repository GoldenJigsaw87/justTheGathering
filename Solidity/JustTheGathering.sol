

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract JustTheGathering {
    struct Admin {
        string userName;
        address userAddress;
        string location;
    }

    Admin[] public admins;

    // Check if an address is already an admin
    function isAdmin(address _addr) public view returns (bool) {
        for (uint i = 0; i < admins.length; i++) {
            if (admins[i].userAddress == _addr) {
                return true;
            }
        }
        return false;
    }

    // Add a new admin — only existing admins (or the first caller) can do this
    function addAdmin(
        string memory _name,
        address _addr,
        string memory _location
    ) public {
        // If no admins yet, allow anyone to add the first one
        if (admins.length > 0) {
            require(
                isAdmin(msg.sender),
                "Only existing admins can add new admins"
            );
        }

        // Prevent duplicate admin
        require(!isAdmin(_addr), "This address is already an admin");

        admins.push(Admin(_name, _addr, _location));
    }

    // Get admin count (optional)
    function getAdminCount() public view returns (uint) {
        return admins.length;
    }
}
