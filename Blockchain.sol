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
        uint256 imei;
    }
    
    mapping (uint => details) individualFile;
    
    function individual(string memory Name, uint256 Age,string memory Lane,string memory City,string memory State,int256 Pincode, uint Date, uint Month, uint Year, uint256 Imei) public{
        details memory Person;
        Person.name=Name;
        Person.age=Age;
        Person.lane = Lane;
        Person.city=City;
        Person.state=State;
        Person.pincode=Pincode;
        Person.date=Date;
        Person.month=Month;
        Person.year=Year;
        Person.imei=Imei;
        individualFile[Imei]=Person;
    }
    
    function PersonDetails(uint256 Imei) public view returns (string memory PersonName, uint256 PersonAge,string memory Personlane,string memory Personcity,string memory Personstate,int256 Personpincode, uint Persondate, uint Personmonth, uint Personyear ){
        details memory Person = individualFile[Imei];
        PersonName=Person.name;
        PersonAge=Person.age;
        Personlane=Person.lane;
        Personcity=Person.city;
        Personstate=Person.state;
        Personpincode=Person.pincode;
        Persondate=Person.date;
        Personmonth=Person.month;
        Personyear=Person.year;
        return(PersonName,PersonAge,Personlane,Personcity,Personstate,Personpincode,Persondate,Personmonth,Personyear);
    }
     
}

