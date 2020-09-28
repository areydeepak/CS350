declare
fun {Sum X Y} 
   X+Y
end
fun {FoldL Ls F Z} 
   case Ls
   of nil then Z
   [] (X|XS) then {FoldL (XS) F {F Z X}}
   end
end
{Browse {FoldL [1 2 3] Sum  0 }}