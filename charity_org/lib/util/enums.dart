enum UserRole  {
  superAdmin,
  readOnly,
  readWrite,
  }

  UserRole? setUserRole(int role){
switch(role){
  case 1 : return UserRole.superAdmin ;
  case 2 : return UserRole.readWrite;
  case 3 : return UserRole.readOnly;
}


     }

//Provider Social Status
enum ProviderSS { 
  widow,
	divorced,
	married,
	specialNeeds,
	missing,
	hanging,
  }


enum FamilyType{
  specialNeeds,
	orphans,
	chase,
	missing,
	noProvider,
	others,
}

enum IncomeType {
  martyrs,
	retired,
	aid,
	others,
  }

  enum HousingType{
  rent,
	ownership,
	illegal,
	others,   
  }

enum FamilyStatus {
  veryWeak,
	weak,
	average,
  }

