?
?C:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Infra.Data\Repositories\Base\BaseRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Infra" '
.' (
Data( ,
., -
Repositories- 9
.9 :
Base: >
{ 
public 

class 
BaseRepository 
<  
TEntity  '
,' (
Tid) ,
>, -
:		 	
IBaseRepository		
 
<		 
TEntity		 !
,		! "
Tid		# &
>		& '
where		( -
TEntity		. 5
:		6 7

BaseEntity		8 B
<		B C
Tid		C F
>		F G
{

 
private 
readonly 
IMongoCollection )
<) *
TEntity* 1
>1 2
_collection3 >
;> ?
public 
virtual 
async 
Task !
<! "
TEntity" )
>) *
Add+ .
(. /
TEntity/ 6
entity7 =
)= >
{ 	
await 
_collection 
. 
InsertOneAsync ,
(, -
entity- 3
)3 4
;4 5
return 
entity 
; 
} 	
public 
async 
Task 
< 
TEntity !
>! "
FindById# +
(+ ,
Tid, /
Id0 2
)2 3
{ 	
throw 
new 
System 
. #
NotImplementedException 4
(4 5
)5 6
;6 7
} 	
} 
} ?
?C:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Infra.Data\Repositories\Base\MongoDb\MongoDbContext.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Infra" '
.' (
Data( ,
., -
Repositories- 9
.9 :
Base: >
.> ?
MongoDb? F
{ 
public 

class 
MongoDbContext 
:  !
IMongoDBContext" 1
{ 
private 
readonly 
IMongoDatabase '
_mongoDatabase( 6
;6 7
public

 
MongoDbContext

 
(

 
)

 
{ 	
MongoClientSettings 
mongoClientSettings  3
=4 5
MongoClientSettings6 I
. 
FromUrl 
( 
new 
MongoUrl %
(% &
$str& (
)( )
)) *
;* +
mongoClientSettings 
.  
SslSettings  +
=, -
new 
SslSettings 
(  
)  !
{ 
EnabledSslProtocols '
=( )
System* 0
.0 1
Security1 9
.9 :
Authentication: H
.H I
SslProtocolsI U
.U V
Tls12V [
} 
; 
MongoClient 
mongoClient #
=$ %
new& )
MongoClient* 5
(5 6
settings6 >
:> ?
mongoClientSettings@ S
)S T
;T U
_mongoDatabase 
= 
mongoClient (
.( )
GetDatabase) 4
(4 5
$str5 7
)7 8
;8 9
} 	
public 
IMongoCollection 
<  
TEntity  '
>' (
GetCollection) 6
<6 7
TEntity7 >
>> ?
(? @
string@ F

collectionG Q
)Q R
{ 	
return 
_mongoDatabase !
.! "
GetCollection" /
</ 0
TEntity0 7
>7 8
(8 9
name9 =
:= >

collection? I
)I J
;J K
} 	
} 
} ?
?C:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Infra.Data\Repositories\EmployeeRole\EmployeeRoleRespository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Infra" '
.' (
Data( ,
., -
Repositories- 9
.9 :
EmployeeRole: F
{ 
public 

class #
EmployeeRoleRespository (
: 
BaseRepository	 
< 
Domain 
. 

Aggregates )
.) *
EmployeeRole* 6
.6 7
Entities7 ?
.? @
EmployeeRole@ L
,L M
stringN T
>T U
, #
IEmployeeRoleRepository	  
{		 
} 
} ?
?C:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Infra.Data\Repositories\Employee\EmployeeRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Infra" '
.' (
Data( ,
., -
Repositories- 9
.9 :
Employee: B
{ 
public 

class 
EmployeeRepository #
: 	
BaseRepository
 
< 
Domain 
.  

Aggregates  *
.* +
Employee+ 3
.3 4
Entities4 <
.< =
Employee= E
,E F
stringG M
>M N
, 	
IEmployeeRepository
 
{		 
} 
} 