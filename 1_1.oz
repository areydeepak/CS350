declare
fun{Take Xs N}
   case Xs
   of nil then nil
   else
      if N==0 then nil
      else
	 Xs.1 | {Take Xs.2 N-1}
      end
   end
end
