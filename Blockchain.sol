pragma solidity ^0.6.10;

contract reva{
    
    struct details{
        string name;
        uint256 age;
        string lane;
        string city;
        string state;
        int256 pincode;
        uint256 date;
        uint256 month;
        uint256 year;
        int256 imei;
    }
    
    mapping (uint => details) individualFile;
    
    function individual(string memory PName, uint256 PAge,string memory Plane,string memory Pcity,string memory Pstate,int256 Ppincode, uint Pdate, uint Pmonth, uint Pyear, int256 Pimei) public{
        details memory Person;
        Person.name=PName;
        Person.age=PAge;
        Person.lane = Plane;
        Person.city=Pcity;
        Person.state=Pstate;
        Person.pincode=Ppincode;
        Person.date=Pdate;
        Person.month=Pmonth;
        Person.year=Pyear;
        Person.imei=Pimei;
        individualFile[Pimei]=Person;
    }
    
    function PersonDetails(string PAge) public view returns (string memory PersonName, uint256 PersonAge,string memory Personlane,string memory Personcity,string memory Personstate,int256 Personpincode, uint Persondate, uint Personmonth, uint Personyear ){
        details memory Person = 
    }
     
}

