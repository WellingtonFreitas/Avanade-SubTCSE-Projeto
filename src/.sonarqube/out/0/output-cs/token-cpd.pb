ò
rC:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\BaseEntity.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
{ 
public 

record 

BaseEntity 
< 
Tid  
>  !
{ 
public 
Tid 
Id 
{ 
get 
; 
set  
;  !
}" #
public		 
ValidationResult		 
validationResult		  0
{		1 2
get		3 6
;		6 7
set		8 ;
;		; <
}		= >
}

 
} ¥

äC:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\EmployeeRole\Entities\EmployeeRole.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
EmployeeRole4 @
.@ A
EntitiesA I
{ 
public 

record 
EmployeeRole 
:  

BaseEntity! +
<+ ,
string, 2
>2 3
{ 
public 
EmployeeRole 
( 
string "
id# %
,% &
string' -
roleName. 6
)6 7
{ 	
Id 
= 
id 
; 
RoleName 
= 
roleName 
;  
}		 	
public 
EmployeeRole 
( 
string "
roleName# +
)+ ,
{ 	
RoleName 
= 
roleName 
;  
} 	
public 
string 
RoleName 
{  
get! $
;$ %
init& *
;* +
}, -
} 
} é
§C:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\EmployeeRole\Interfaces\Repositories\IEmployeeRoleRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
EmployeeRole4 @
.@ A

InterfacesA K
.K L

RepositoryL V
{ 
public 

	interface #
IEmployeeRoleRepository ,
:- .
IBaseRepository/ >
<> ?
Entities? G
.G H
EmployeeRoleH T
,T U
stringV \
>\ ]
{ 
} 
}		 ∆
ùC:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\EmployeeRole\Interfaces\Services\IEmployeeRoleService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
EmployeeRole4 @
.@ A
ServicesA I
{ 
public 

	interface  
IEmployeeRoleService )
{ 
Task 
< 
Entities 
. 
EmployeeRole "
>" # 
AddEmployeeRoleAsync$ 8
(8 9
Entities9 A
.A B
EmployeeRoleB N
employeeRoleO [
)[ \
;\ ]
} 
}		 ∂
ëC:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\EmployeeRole\Services\EmployeeRoleService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
EmployeeRole4 @
.@ A
ServicesA I
{ 
public 

class 
EmployeeRoleService $
:% & 
IEmployeeRoleService' ;
{ 
private		 
readonly		 

IValidator		 #
<		# $
Entities		$ ,
.		, -
EmployeeRole		- 9
>		9 :

_validator		; E
;		E F
private

 
readonly

 #
IEmployeeRoleRepository

 0#
_employeeRoleRepository

1 H
;

H I
public 
async 
Task 
< 
Entities "
." #
EmployeeRole# /
>/ 0 
AddEmployeeRoleAsync1 E
(E F
EntitiesF N
.N O
EmployeeRoleO [
employeeRole\ h
)h i
{ 	
var 
	validated 
= 
await !

_validator" ,
., -
ValidateAsync- :
(: ;
employeeRole; G
,G H
optI L
=>M O
{ 
opt 
. 
IncludeRuleSets #
(# $
$str$ )
)) *
;* +
} 
) 
; 
employeeRole 
. 
validationResult )
=* +
	validated, 5
;5 6
if 
( 
! 
employeeRole 
. 
validationResult .
.. /
IsValid/ 6
)6 7
{ 
return 
employeeRole #
;# $
} 
return 
await #
_employeeRoleRepository /
./ 0
Add0 3
(3 4
employeeRole4 @
)@ A
;A B
} 	
} 
} É

ïC:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\EmployeeRole\Validators\EmployeeRoleValidator.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
EmployeeRole4 @
.@ A

ValidatorsA K
{ 
public 

class !
EmployeeRoleValidator &
:' (
AbstractValidator) :
<: ;
Entities; C
.C D
EmployeeRoleD P
>P Q
{ 
public !
EmployeeRoleValidator $
($ %
)% &
{ 	
RuleSet		 
(		 
$str		 
,		 
(		 
)		 
=>		  
{

 
RuleFor 
( 
e 
=> 
e 
. 
RoleName '
)' (
.( )
NotEmpty) 1
(1 2
)2 3
.3 4
WithMessage4 ?
(? @
$str@ a
)a b
;b c
} 
) 
; 
} 	
} 
} õ
ÇC:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\Employee\Entities\Employee.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
Employee4 <
.< =
Entities= E
{ 
public 

record 
Employee 
: 

BaseEntity '
<' (
string( .
>. /
{ 
public 
Employee 
( 
string 
	firstName (
,( )
string 
surName 
, 
DateTime		 
birthday		 
,		 
bool

 
active

 
,

 
decimal 
salary 
, 
EmployeeRole 
. 
Entities !
.! "
EmployeeRole" .
employeeRole/ ;
); <
{ 	
	FirstName 
= 
	firstName !
;! "
SurName 
= 
surName 
; 
Birthday 
= 
birthday 
;  
Active 
= 
active 
; 
Salary 
= 
salary 
; 
EmployeeRole 
= 
employeeRole '
;' (
} 	
public 
string 
	FirstName 
{  !
get" %
;% &
init' +
;+ ,
}- .
public 
string 
SurName 
{ 
get  #
;# $
init% )
;) *
}+ ,
public 
DateTime 
Birthday  
{! "
get# &
;& '
init( ,
;, -
}. /
public 
bool 
Active 
{ 
get  
;  !
init" &
;& '
}( )
public 
decimal 
Salary 
{ 
get  #
;# $
init% )
;) *
}+ ,
public 
EmployeeRole 
. 
Entities $
.$ %
EmployeeRole% 1
EmployeeRole2 >
{? @
getA D
;D E
initF J
;J K
}L M
}   
}!! ¸
úC:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\Employee\Interfaces\Repositories\IEmployeeRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
Employee4 <
.< =

Interfaces= G
.G H
RepositoriesH T
{ 
public 

	interface 
IEmployeeRepository (
:) *
IBaseRepository+ :
<: ;
Entities; C
.C D
EmployeeD L
,L M
stringN T
>T U
{ 
} 
}		 »
ïC:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\Employee\Interfaces\Services\IEmployeeService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
Employee4 <
.< =

Interfaces= G
.G H
ServicesH P
{ 
public 

	interface 
IEmployeeService %
{ 
Task 
< 
Entities 
. 
Employee 
> 
AddEmployee  +
(+ ,
Entities, 4
.4 5
Employee5 =
employee> F
)F G
;G H
} 
}		 å
âC:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\Employee\Services\EmployeeService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
Employee4 <
.< =
Services= E
{ 
public 

class 
EmployeeService  
:! "
IEmployeeService# 3
{ 
public 
async 
Task 
< 
Entities "
." #
Employee# +
>+ ,
AddEmployee- 8
(8 9
Entities9 A
.A B
EmployeeB J
employeeK S
)S T
{		 	
throw

 
new

 
System

 
.

 #
NotImplementedException

 4
(

4 5
)

5 6
;

6 7
} 	
} 
} Å
|C:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Base\Repository\IBaseRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
Base) -
.- .

Repository. 8
{ 
public 

	interface 
IBaseRepository $
<$ %
TEntity% ,
,, -
Tid. 1
>1 2
where3 8
TEntity9 @
:A B

BaseEntityC M
<M N
TidN Q
>Q R
{ 
Task 
< 
TEntity 
> 
Add 
( 
TEntity !
entity" (
)( )
;) *
Task

 
<

 
TEntity

 
>

 
FindById

 
(

 
Tid

 "
Id

# %
)

% &
;

& '
} 
} Ä
ÑC:\Projects\.NET\Curso AVANADE\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Base\Repository\MongoDb\IMongoDBContext.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
Base) -
.- .

Repository. 8
.8 9
MongoDb9 @
{ 
public 

	interface 
IMongoDBContext $
{ 
IMongoCollection 
< 
TEntity  
>  !
GetCollection" /
</ 0
TEntity0 7
>7 8
(8 9
string9 ?

collection@ J
)J K
;K L
} 
}		 