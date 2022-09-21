<h1>hh</h1>
{$articleTitle}<br/>
{$articleTitle|capitalize}<br/>
{$articleTitle|capitalize:true}<br/>
      {*Variable modifier/cat*}
{$Title|cat:' yesterday.'}<br/>
       {*Count character*}
{$articleTitle|count_characters}<br/>
{$articleTitle|count_characters:true}<br/>
        {*Count sentences*}
{$Title|count_sentences}<br/>
        {*Count words*}
{$articleTitle|count_words}<br/>
       {*Data Format*}
{$smarty.now|date_format}<br/>
{$smarty.now|date_format:"%D"}<br/>
{$smarty.now|date_format:$config.date}<br/>
{$yesterday|date_format}<br/>
{$yesterday|date_format:"%A, %B %e, %Y"}<br/>
{$yesterday|date_format:$config.time}<br/>
        {*Default*}
{$articleTitle|default:'no title'}<br/>
{$myTitle|default:'no title'}<br/>
{$email|default:'No email address available'}<br/>  
              
{$articleTitle|escape}<br/>
{$articleTitle|escape:'html'}    {* escapes  & " ' < > *}<br/>
<a href="?title={$aTitle|escape:'url'}">click here</a><br/>
<a href="?title=%27Stiff%20Opposition%20Expected%20to%20Casketless%20Funeral%20Plan%27">click here</a><br/>

{$aTitle|escape:'quotes'}<br/>

<a href="mailto:{$Address|escape:"hex"}">{$Address|escape:"hexentity"}</a><br/>
{$Address|escape:'mail'}    {* this converts to email to text *}<br/>
<a href="mailto:%62%6f%..snip..%65%74">&#x62;&#x6f;&#x62..snip..&#x65;&#x74;</a><br/>

{'mail@example.com'|escape:'mail'}<br/>

                {*indent*}

{$TitleA}<br/>

{$TitleA|indent}<br/>

{$TitleA|indent:20}<br/>

{$TitleA|indent:1:"\t"}<br/>
 
{$articleTitle|lower}<br/>
{$articleTitle|nl2br}<br/>
{$articleTitle|regex_replace:"/[\r\t\n]/":" "}<br/>
{$articleTitle|replace:'Will':'is'}<br/>
{$articleTitle|spacify:"^^"}
                 {*comining modifier*}

{$modifier}<br/>
{$modifier|upper|spacify}<br/>
{$modifier|lower|spacify|truncate}<br/>
{$modifier|lower|truncate:30|spacify}<br/>
{$modifier|lower|spacify|truncate:30:". . ."}<br/>

                     {*Build In Function*}

{append var='name' value='Bob' index='first'}
{append var='name' value='singh' index='last'}
The first name is {$name.first}.<br>
The last name is {$name.last}.

{*assign var="name" value="Bob"*}
{assign "name" "Apply"} {* short-hand *}
The value of $name is {$name}.
{assign var=foo value="bar" scope="root"}
The value of $foo is {$foo}