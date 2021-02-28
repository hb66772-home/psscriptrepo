

param (    
    [string]$foo="abcdedcba"
)

$charArray = $foo.ToCharArray()
# Init empty hashtable
$foundChars = @{}
$index = 0
foreach ($i in $charArray) 
{         
    if ($index -lt $foo.length)
    {        
        $substring = $foo.substring($index,$foo.length-$index)           
        if ($foundChars.contains($i))        
        {
            if ($substring.startswith($i))
            {
                Write-Host "found: $i"
                #return $i            
                break;
            }
        }
        else {
            $foundChars.add($i,$index)
        }
        $index++
    }

}