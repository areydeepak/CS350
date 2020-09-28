declare
fun {Last Xs N}
      if N>0 then
         case Xs of nil then nil
         [] _|Xr then {Drop Xr N-1} end
      else N=0 Xs end
   end