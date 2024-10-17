. $PSScriptRoot"\utils\string-to-array.ps1"
. $PSScriptRoot"\utils\to-pascal-case.ps1"

<#
.Synopsis
   Converts text into PascalCase. 
.DESCRIPTION
   Converts any text into PascalCase notation. Unnecessary spaces are filtered out.
.EXAMPLE
   ConvertTo-PascalCase "Hello world!" 
.INPUTS
   Any string like 'Hello world!'.
.OUTPUTS
   An converted string like 'HelloWorld!'
.NOTES
   Removes all leading, closing and double whitespaces.
#>
function ConvertTo-PascalCase {

      param
   (
      [parameter(Mandatory=$true, Position=0)]
      [ValidateNotNull()]
      [string] $value
   )
  
     return  StringTo-Array $value | ToPascalCase  
}

Export-ModuleMember -Function ConvertTo-PascalCase