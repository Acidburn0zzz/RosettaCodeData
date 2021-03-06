/*REXX program creates a  range extraction  from a  list of numbers  (can be negative.) */
old=0 1 2 4 6 7 8 11 12 14 15 16 17 18 19 20 21 22 23 24 25 27 28 29 30 31 32 33 35 36 37 38 39
#= words(old)                                    /*number of integers in the number list*/
new=                                             /*the new list, possibly with ranges.  */
     do j=1  to  #;              x= word(old, j) /*obtain Jth number in the  old  list. */
     new= new','  x                              /*append  "    "    to  "   new    "   */
     inc= 1                                      /*start with an increment of one  (1). */
              do k=j+1  to #;    y= word(old, k) /*get the Kth number in the number list*/
              if y\==x+inc  then leave           /*is this number not > previous by inc?*/
              inc= inc + 1;      g= y            /*increase the range, assign  G (good).*/
              end   /*k*/
     if k-1=j   |   g=x+1   then iterate         /*Is the range=0│1?  Then keep truckin'*/
     new= new'-'g;               j= k - 1        /*indicate a range of #s;  change index*/
     end            /*j*/
                                                 /*stick a fork in it,  we're all done. */
new= space( substr(new, 2),  0)                  /*elide leading comma, also all blanks.*/
say 'old:'   old                                 /*display the old range of numbers.    */
say 'new:'   new                                 /*   "     "  new  list  "    "        */
