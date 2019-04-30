#!/bin/bash
mail $1 <<ENDOFTEXT
Yo $2,
I wrote this email using the terminal command "mail." Cool huh!?
$USER
ENDOFTEXT
echo mail sent to $1
