declare
fun{Map X F}
   case X
   of nill then nill
   [] A|B then {FoldR [A] fun {$ R S} {F R} end 1}|{Map B F}
   end
end
