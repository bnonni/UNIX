{
    average = ($2+$3+$4)/3;
    if(average < 50){print $0 " : FAIL";}
    else if(average > 50 && average < 60){ print $0 " : C";}
    else if( average >= 60 && average < 80){print $0 " : B";}
    else if(average >= 80 && average <= 90){print $0 " : A";}
    else{ print $0 " : A+";}
}

