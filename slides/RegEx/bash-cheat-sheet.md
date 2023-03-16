              B A S H   C H E A T   S H E E T    
   
 to page output forward (only): command filename | more 
 to page output forward & back: command filename | less
 to print a dataset: lp datasetname (-d printerid) (-o landscape)

 USE OF QUOTATION MARKS
    echo "$varname"    =   echo The value of \$varname is \"$varname\"
                       =   echo "The value of \$varname is \"$varname\"."
    $fred='Four spaces between these    words.'
          echo $fred      yields    Four spaces between these words.
          echo "$fred"    yields    Four spaces between these    words.

 SPECIAL CHARACTERS                   
   ~ home directory                 # comment                             
   $ variable expression            & background job                     
   ; shell command separator        / pathname directory separator      
   \ quote (escape) next character  | pipe                              
   * string wildcard                ? single-character wildcard         
   ( start subshell                 ) end subshell                      
   [ start character-set wildcard   ] end character-set wildcard        
   { start command block            } end command block                 
   ' strong quote (prevents subs)   " weak quote (allows subs)           
   < input redirect                 > output redirect                   
   ! logical NOT                    || logical OR                         
  && logical AND                    \ Return  continue on next line
   . (dot builtin: execute)         : (null builtin: returns true)
  << here document                  >> append output  
            
 FILE ATTRIBUTE OPERATORS
    -e    file exists    example: if  [ ! -e filename ]; then
                                       echo "filename does not exist"
                                  else ....
                                  fi
    -d    file exists and is a directory 
    -f    file exists and is a normal file  
    -r    user has read permission for the file  
    -s    file exists and is not empty
    -w    user has write permission for the file
    -x    user has execution permission for a normal file, or
          user has search permission for a directory
    -O    user owns the file
    -G    user's group id has access to the file
    -nt   newer than   (modification date-time of file
    -ot   older than    for file-to-file comparison)
          
 ARITHMETIC ASSIGNMENT
   let x=1+4          value of $x is 5
        ='1 + 4'                     5
        ='(2+3) * 5'                25
        ='2 + 3 * 5'                17
        ='17 / 3'                    5
        ='17 % 3'                    2         
                                           bitwise:
        ='1<<4'                     16         00001  ->   10000
        ='48>>3'                     6        110000  ->  000110
        ='17 & 3'                    1     10001 & 11 ->   00001  
        ='17 | 3'                   19     10001 | 11 ->   10011
        ='17 ^ 3'                   18     10001 ^ 11 ->   10010

 I/O REDIRECTORS
    cmd1 | cmd2   use stdout of cmd1 as stdin for cmd2
         > file   save stdout to file
         < file   use file as stdin
        >> file   append stdout to file (create file if nonexistent)
        >| file   force stdout to file (even if noclobber is set)
       n>| file   force stdout to file from descriptor n (even...)
        <> file   use file as both stdin and stdout (process in place)
       n<> file   use as both stdin and stdout for file descriptor n
        << label  use here-document (within scripts specifies batch input)
        n> file   direct file descriptor n to file
        n< file   take file descriptor n from file
       n>> file   append descriptor n to file (or create file for n)
       n>&        duplicate stdout to file descriptor n
       n<&        duplicate stdin from file descriptor n
       n>&m       make file descriptor n a copy of the stdout fd
       n<&m       make file descriptor n a copy of the stdin  fd 
        >&file    send stdout and stderror to file
       <&-        close stdin
       >&-        close stdout
      n<&-        close input  from file descriptor n
      n>&-        close output from file descriptor n

 STRING COMPARISON OPERATORS          INTEGER COMPARISON OPERATORS
  (truth = 0)                          (truth = 1)
     =    matches                        -lt   less than
    !=    does not match                 -le   less than or equal 
     <    less than                      -eq   equal  
     >    greater than                   -ge   greater than or equal
    -n    not null (length > 0)          -gt   greater than
    -z    null (length = 0)              -ne   not equal
 ARITHMETIC OPERATORS                 RELATIONAL OPERATORS
    +    addition                        <   less than
    -    subtraction                     >   greater than
    *    multiplication                  <=  less than or equal to
    /    division (w/ truncation)        >=  greater than or equal to
    %    remainder                       ==  equal to
    <<   bit-shift left                  !=  not equal to
    >>   bit-shift right                 &&  logical and
    &    bit-wise and                    ||  logical or
    |    bit-wise or
    ~    bit-wise not
    !    bit-wise not
    ^    bit-wise exclusive or

 ARITHMETIC EXPRESSION:   $((   ))
       echo "Only $(( (365-$(date +%j)) / 7 )) weeks until the New Year"
          
 KEYWORD VARIABLES
    BASH_ENV     startup file path  INPUTRC   readline start default
    CDPATH       'cd' searchpath    LANG      locale default
    COLUMNS      width of display   LC_*      locale categories
    FCEDIT       default fc editor  LINES     height of display
    HISTFILE     history list path  MAIL      mail pathname
    HISTSIZE     max hist entries   MAILCHECK how often, in seconds
    HOME         user default dir   MAILPATH  :-separated list for mail
    IFS          field separators   PATH      :-separated list for cmds
        and many, many more                               
 SUBSTITUTION OPERATORS
    ${#varname}           returns the length of varname
    ${varname:-word}      returns word if varname is undefined 
    ${varname:=word}      sets varname to word if varname is undefined
    ${varname:+word}      returns word if varname exists and isn't null,
                             otherwise returns null
    ${varname:?message}   prints varname and message
                             and aborts command if varname is undefined
    ${varname:offset(:length) 
                          returns parts of strings beginning at offset  
                             for the specified length (default s total)
                          special circumstance: when varname is "@",
                             length means number of positional parameters
                             starting at positional parameter offset
 PATTERN MATCHING
    ${variable#pattern}   if pattern matches beginning of variable's value
                          delete shortest part that matches, return rest
    ${variable##pattern}  if pattern matches beginning of variable's value
                          delete longest part that matches, return rest
    ${variable%pattern}   if pattern matches end of variable's value
                          delete shortest part that matches, return rest
    ${variable%%pattern}  if pattern matches end of variable's value
                          delete longest part that matches, return rest
    ${variable/pattern/string}
                          longest match to pattern in variable is
                          replaced by string (first match only)
    ${variable//pattern/string}
                          longest match to pattern in variable is
                          replaced by string (all possible matches)
            for the two latter:
                if pattern begins with #, match must be at beginning
                    of variable; if pattern begins with %, match must
                    be at end of variable
                if string is null, matches are deleted
                if variable is @ or *, operation is applied to each
                         positional parameter in turn
    for variable Path with value /home/me/book/long.file.name :
        ${Path##/*/}                      long.file.name
        ${Path#/*/}               me/book/long.file.name
        $Path               /home/me/book/long.file.name
        ${Path%.*}          /home/me/book/long.file
        ${Path%%.*}         /home/me/book/long

 CONTROL KEY USAGE ('stty -a' gives complete list)
    Cntl-C    cancel current comand (first try)
    Cntl-\    cancel current command (second try)
    Cntl-L    clear the screen
    Cntl-D    end of input  
    Cntl-?    erase last character
    Cntl-W    erase last word
    Cntl-U    erase entire command line
    Cntl-O    flush
    Cntl-S    halt output to screen
    Cntl-V    next line
    Cntl-R    reprint
    Cntl-Y    restart current command 
    Cntl-Q    restart output to screen
    Cntl-M    return
    Cntl-Z    suspend current command 
       
       
       
 PROMPT STRINGS                                       
   PS1  primary prompt string    default "\s-\v\$"  
   PS2  secondary prompt string  default ">"               
   PS3  selection menu p.s.      default "#?"                       
   PS4  debug prompt string      default "+" per level of expansion
            
 PROMPT STRING CUSTOMIZATIONS            
   \a  ASCII bell character (007)     \H  hostname
   \e  ASCII escape key (033)         \h  hostname up to the first "."
   \d  date as Weekday Month Day      \T  time in 12-hr HH:MM:SS
   \n  carriage return, line feed     \t  time in 24-hr HH:MM:SS
   \s  shell name                     \@  time in HH:MM am/pm
   \u  username                       \v  version of bash
   \w  working directory              \V  version, patchlevel of bash
   \W  basename of working directory  \#  command number
   \$  root as #, user as $           \!  history number
   \nnn character code in octal       \\  backslash
   \[  begin non-printing characters  \]  end non-printing characters
      
 FREQUENTLY USED REGULAR EXPRESSIONS
    city, state zip            '^.*, [A-Z][A-Z] [0-9]{5}-[0-9]{4} '
    month, day, year           '[A-Z][a-z]\{3,9\} [0-9]\{1,2}, [0-9]\{4\}'
    soc-sec-number             '[0-9]\{3\}-[0-9]\{2\}-[0-9]\{4\}'
    telephone number           '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}'
    dollars and cents          '\$ [0-9]*\.[0-9]\{2\}
    blank line                 '^$'
    an entire line             '^.*$'
    one or more spaces         ' *'
       for best results, invoke bash with the --posix option

 CONTROL FLOW    

    if    condition-1 ; then         case test-string in
         {statement-block-1}              pattern1 ) {statements 
    elif  condition-2 ; then                          using $expression} ;;
         {statement-block-2}              pattern2 ) {more statements}   ;;
    else {statement-block-n}              *        ) {error processing}  ;;
    fi                               esac    

    for loop-index (in list)         select name in list; 
    do                               do
        {statements using $name}         {statements using $name}
    done                             done

    while  condition                 until  condition                   
    do                               do
          {statement-block}                {statement-block}
    done                             done

    default list is $@              
    condition for 'while', 'until' checked at top of loop
    'break','continue' valid in 'for', 'while', 'until' lopps 
      
      
      
      
 VARIABLES ALWAYS AVAILABLE WITHIN A SCRIPT
    $0  script name                   $1  first passed parameter 
    $*  all parameters but $0         $2  second passed parameter
    $#  number of tokens in $*        $n  nth passed parameter
    $?  exit status of a command
    $$  process id
    $@  quoted passed parameters ("$1","$2",...) and all keyword parms
           
 USER-DEFINED VARIABLES
    assign a value:      variable=value    echo  $variable  -> value
    remove a value:      variable=         echo "$variable" -> value
    remove a variable:   unset variable    echo '$variable' -> $variable
    use the value:       $variable         echo \$variable  -> $variable
    assign an attribute: declare -attribute variable
    remove an attribute: declare +attribute variable
       attributes include -a   array
                          -f   function 
                          -i   integer
                          -r   readonly 
                          -x   export   
       multiple attributes per variable may occur in a single command
       
 ORDER OF COMMAND-LINE TRANSFORMATION
          brace expansion
          tilde expansion
          parameter expansion
          variable expansion
          command substitution
          arithmetic expansion
          word-splitting
          filename/pathname expansion
     transformation is triggered by
          & ; / * ? ' " ` [] () $ <> {} ^ # /\ % ~
          
 '#! /bin/bash'    identifies bash as the scripting language
 '#! /bin/sed'     identifies sed  as the scripting language
 '#! /bin/gawk'    identifies gawk as the scripting language
         these must be first characters on first line of the script

 'grep -c string filename' will give a count of occurences of string   
           within the file
 'diff oldfile newfile' shows unique oldfile lines with <
                          and unique newfile lines with >
 'xxd'  will give a hex dump, or reverse it; -E gives ebcdic to the right 
       
 'exit' will collapse a shell; to check for return status > 0, 
           execute script from a secondary shell: 'bash scriptname'
   
 \X'nn ' is marker for hex value of an ASCII character


 Credit to (@ssledz)[https://gist.github.com/ssledz/9d244e4d5898fbd217d67bb62bdc22e5]