#!/bin/bash

#function:

function hello(){
       echo "hello from inside of fn";
}

hello;

#fn with var:

name="ayush";

greet(){
        echo "hello, $name";
}

greet;

#fn with parameter

greetings(){

        echo "greetings, $1";
        echo "greetings, $2";

}

greetings "ayush" "rohan";