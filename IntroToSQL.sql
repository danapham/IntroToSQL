--variable declaration
declare @favoriteNumber int = 13
Declare @favoriteBigNumber bigint
DECLARE @favoriteSmallNumber smallint
declare @favoriteBabyNumber tinyint

--money stores 4 decimal places
declare @moneyinmybankaccount money
--set up level of specificity
declare @decimalthings decimal(18,2)
declare @floatthings float

--need to specify the length of a string
declare @fixedLengthString char(50) = 'stuff to store'
--varchar at most 8000 characters
declare @variableLengthString varchar(8000) = 'variable length'
--can store any length string that you want
declare @oldLongString text
declare @hugevariableLengthString varchar(max) = 'variable length' --use sparingly, it's bad for you

--for international characters and emojis, downside is max value is half
declare @UTF8fixedLengthString nchar(50) = 'stuff to store'
declare @UTF8variableLengthString nvarchar(4000) = 'variable length'
declare @UTF8hugevariableLengthString nvarchar(max) = 'variable length'

select @variableLengthString, @fixedLengthString

--boolean stuff; 1 is true, 0 is false; if negative will be 0, if positive will be 1
declare @isNathanAwesome bit = 27

select @isNathanAwesome

--dates
declare @myBirthday datetime2 --MS suggests you use datatime2, starts from year 1
declare @anotherBirthday date --not used very often because not transferrable outside of TSQL
declare @birfday datetime -- starts with year 1753

/*
This is a 
multi-line
comment.
*/
--output variable in one way
select @favoriteNumber
--set it a different way
set @favoriteNumber = 27
--print it, shows up in the messages area
print @favoriteNumber